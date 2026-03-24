#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/../.." && pwd)"
TARGET_FILE="${REPO_ROOT}/src/Time_step/time.f90"
OUTPUT_DIR="${SCRIPT_DIR}/outputs/vel_grad_bench"
RESULTS_FILE="${OUTPUT_DIR}/results.tsv"
BACKUP_FILE="$(mktemp "${TARGET_FILE}.bench.XXXXXX")"
RESTORE_ON_EXIT=1
CANDIDATE_DIR="${SCRIPT_DIR}/new_time_candidates"

MODULE_CMD="${MODULE_CMD:-ml pgi nvhpc-openmpi3 cmake}"
BUILD_CMD="${BUILD_CMD:-./make.sh gpu}"
RUN_CMD="${RUN_CMD:-./run.sh 1 gpu}"
AVG_AWK='/Calculate_vel_grad_dt_3d inside calculate_dt time/ {sum+=$2; n++} END {if (n>0) printf "%.9f\n", sum/n; else print "nan"}'
COUNT_AWK='/Calculate_vel_grad_dt_3d inside calculate_dt time/ {n++} END {print n+0}'
TIMEOUT_CMD="${TIMEOUT_CMD:-timeout 1800}"

mkdir -p "${OUTPUT_DIR}"
cp "${TARGET_FILE}" "${BACKUP_FILE}"

cleanup() {
    if [[ "${RESTORE_ON_EXIT}" == "1" ]]; then
        cp "${BACKUP_FILE}" "${TARGET_FILE}"
    fi
    rm -f "${BACKUP_FILE}"
}
trap cleanup EXIT

extract_and_replace_subroutine() {
    local candidate="$1"
    local tmp_file
    tmp_file="$(mktemp "${TARGET_FILE}.swap.XXXXXX")"

    awk '
        FNR == NR {
            if ($0 ~ /^[[:space:]]*subroutine[[:space:]]+Calculate_vel_grad_dt_3d/) capture=1
            if (capture) block[++n] = $0
            if (capture && $0 ~ /^[[:space:]]*end[[:space:]]+subroutine[[:space:]]+Calculate_vel_grad_dt_3d/) capture=0
            next
        }
        {
            if (!skip && $0 ~ /^[[:space:]]*subroutine[[:space:]]+Calculate_vel_grad_dt_3d/) {
                for (i = 1; i <= n; i++) print block[i]
                skip = 1
                next
            }
            if (skip) {
                if ($0 ~ /^[[:space:]]*end[[:space:]]+subroutine[[:space:]]+Calculate_vel_grad_dt_3d/) skip = 0
                next
            }
            print
        }
    ' "${candidate}" "${TARGET_FILE}" > "${tmp_file}"

    mv "${tmp_file}" "${TARGET_FILE}"
}

run_variant() {
    local name="$1"
    local candidate="$2"
    local output_file="${OUTPUT_DIR}/${name}.txt"
    local avg count status

    extract_and_replace_subroutine "${candidate}"

    status="OK"
    if ! bash -lc "${MODULE_CMD} && cd '${SCRIPT_DIR}' && ${BUILD_CMD}" > "${OUTPUT_DIR}/${name}.build.log" 2>&1; then
        status="BUILD_FAIL"
    elif ! bash -lc "${MODULE_CMD} && cd '${SCRIPT_DIR}' && ${TIMEOUT_CMD} bash -lc '${RUN_CMD} > ${output_file}'" > "${OUTPUT_DIR}/${name}.run.log" 2>&1; then
        status="RUN_FAIL"
    fi

    if [[ "${status}" == "OK" ]]; then
        avg="$(awk -F: "${AVG_AWK}" "${output_file}")"
        count="$(awk -F: "${COUNT_AWK}" "${output_file}")"
    else
        avg="nan"
        count="0"
    fi

    printf "%s\t%s\t%s\t%s\n" "${name}" "${status}" "${count}" "${avg}" | tee -a "${RESULTS_FILE}"
}

if [[ ! -d "${CANDIDATE_DIR}" ]]; then
    printf "Candidate directory not found: %s\n" "${CANDIDATE_DIR}" >&2
    exit 1
fi

mapfile -t CANDIDATE_FILES < <(find "${CANDIDATE_DIR}" -maxdepth 1 -type f -name '*.f90' | sort)
if [[ "${#CANDIDATE_FILES[@]}" -eq 0 ]]; then
    printf "No candidate files found in %s\n" "${CANDIDATE_DIR}" >&2
    exit 1
fi

if [[ ! -f "${RESULTS_FILE}" ]]; then
    printf "name\tstatus\tcount\tavg\n" > "${RESULTS_FILE}"
fi

best_name=""
best_candidate=""
best_avg=""

for candidate in "${CANDIDATE_FILES[@]}"; do
    name="$(basename "${candidate}" .f90)"
    run_variant "${name}" "${candidate}"

    avg="$(awk -F'\t' -v target="${name}" '$1 == target {print $4}' "${RESULTS_FILE}" | tail -n 1)"
    status="$(awk -F'\t' -v target="${name}" '$1 == target {print $2}' "${RESULTS_FILE}" | tail -n 1)"

    if [[ "${status}" == "OK" && "${avg}" != "nan" ]]; then
        if [[ -z "${best_avg}" ]] || awk "BEGIN {exit !(${avg} < ${best_avg})}"; then
            best_name="${name}"
            best_candidate="${candidate}"
            best_avg="${avg}"
        fi
    fi
done

if [[ -n "${best_candidate}" ]]; then
    extract_and_replace_subroutine "${best_candidate}"
    RESTORE_ON_EXIT=0
    printf "\nBest variant: %s\nAverage time: %s\n" "${best_name}" "${best_avg}"
    printf "Best variant: %s\nAverage time: %s\n" "${best_name}" "${best_avg}" > "${OUTPUT_DIR}/best.txt"
else
    printf "\nNo successful variant run. See %s\n" "${RESULTS_FILE}"
    exit 1
fi
