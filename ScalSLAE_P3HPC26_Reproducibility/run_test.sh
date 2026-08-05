#!/bin/bash

set -euo pipefail

REPRO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEST_NAME="${1:-}"

TESTS=(
  WEAK_SCALING_A100
  WEAK_SCALING_PVC_COMPOSITE
  WEAK_SCALING_PVC_FLAT
  WEAK_SCALING_MPI_X
  WEAK_SCALING_CPU
  SERIAL_TIMES
)

usage() {
  cat <<EOF
Usage:
  $0 <TEST_NAME> <PARTITION> [-account ACCOUNT] [test options]
  $0 ALL -partition_cpu PARTITION \\
         -partition_gpu_nvidia PARTITION \\
         -partition_gpu_intel PARTITION \\
         [-account ACCOUNT] [test options]

Available tests:
  ${TESTS[*]}

Options:
  -account ACCOUNT             Optional Slurm account passed as #SBATCH -A.
  --physics MODE              all, lagrange, or euler; default: all.
  --max-cycles N              Override the maximum cycle count.
  --clean-first               Clean-build the first configuration in each suite.
  --dry-run                   Print commands without building or submitting.
  --gpu-request-mode MODE     none, gpus, gpus-per-node, or gres.
  --gpu-gres-name NAME        GRES name used with request mode gres.
  -h, --help                  Show this help message.
EOF
}

if [[ -z "${TEST_NAME}" ]]; then
  usage
  exit 2
fi

if [[ "${TEST_NAME}" == "-h" || "${TEST_NAME}" == "--help" ]]; then
  usage
  exit 0
fi
shift

run_one() {
  local name="$1"
  local partition="$2"
  shift 2
  python3 "${REPRO_DIR}/${name}/run_test.py" --partition "${partition}" "$@"
}

require_option_value() {
  local option="$1"
  local value="${2:-}"
  if [[ -z "${value}" || "${value}" == -* ]]; then
    echo "${option} requires a partition name." >&2
    usage >&2
    exit 2
  fi
}

if [[ "${TEST_NAME}" == "ALL" ]]; then
  PARTITION_CPU=""
  PARTITION_GPU_NVIDIA=""
  PARTITION_GPU_INTEL=""
  FORWARD_ARGS=()

  while [[ $# -gt 0 ]]; do
    case "$1" in
      -partition_cpu|--partition-cpu)
        require_option_value "$1" "${2:-}"
        PARTITION_CPU="$2"
        shift 2
        ;;
      -partition_gpu_nvidia|--partition-gpu-nvidia)
        require_option_value "$1" "${2:-}"
        PARTITION_GPU_NVIDIA="$2"
        shift 2
        ;;
      -partition_gpu_intel|--partition-gpu-intel)
        require_option_value "$1" "${2:-}"
        PARTITION_GPU_INTEL="$2"
        shift 2
        ;;
      -h|--help)
        usage
        exit 0
        ;;
      *)
        FORWARD_ARGS+=("$1")
        shift
        ;;
    esac
  done

  if [[ -z "${PARTITION_CPU}" || -z "${PARTITION_GPU_NVIDIA}" || -z "${PARTITION_GPU_INTEL}" ]]; then
    echo "ALL requires CPU, NVIDIA GPU, and Intel GPU partitions." >&2
    usage >&2
    exit 2
  fi

  run_one WEAK_SCALING_A100 "${PARTITION_GPU_NVIDIA}" "${FORWARD_ARGS[@]}"
  run_one WEAK_SCALING_PVC_COMPOSITE "${PARTITION_GPU_INTEL}" "${FORWARD_ARGS[@]}"
  run_one WEAK_SCALING_PVC_FLAT "${PARTITION_GPU_INTEL}" "${FORWARD_ARGS[@]}"
  run_one WEAK_SCALING_MPI_X "${PARTITION_CPU}" "${FORWARD_ARGS[@]}"
  run_one WEAK_SCALING_CPU "${PARTITION_CPU}" "${FORWARD_ARGS[@]}"
  run_one SERIAL_TIMES "${PARTITION_CPU}" "${FORWARD_ARGS[@]}"
  exit 0
fi

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

PARTITION="${1:-}"
if [[ -z "${PARTITION}" || "${PARTITION}" == -* ]]; then
  echo "A Slurm partition must be supplied after the test name." >&2
  usage >&2
  exit 2
fi
shift

for name in "${TESTS[@]}"; do
  if [[ "${TEST_NAME}" == "${name}" ]]; then
    run_one "${name}" "${PARTITION}" "$@"
    exit 0
  fi
done

echo "Unknown test: ${TEST_NAME}" >&2
usage >&2
exit 2
