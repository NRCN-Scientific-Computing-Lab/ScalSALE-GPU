# .
#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   ./bench_times.sh
#   ./bench_times.sh -g

run_gpu=0

if [ "${1:-}" = "-g" ]; then
    run_gpu=1
    shift
fi

if [ $# -ne 0 ]; then
    echo "Usage: $0 [-g]"
    exit 1
fi

# Paths relative to src/Scripts
times_dir="./times"
target_file="../Time_step/time.f90"
out_root="./outputs/100_ncyc150_O2"

mkdir -p "$out_root"

shopt -s nullglob
files=( "$times_dir"/*.f90 )

if [ ${#files[@]} -eq 0 ]; then
    echo "No .f90 files found in $times_dir"
    exit 1
fi

for src in "${files[@]}"; do
    base="$(basename "$src")"
    version="${base%.f90}"
    version_dir="$out_root/$version"

    mkdir -p "$version_dir"

    echo "========================================"
    echo "Version: $version"

    echo "Copying $src -> $target_file"
    cp "$src" "$target_file"

    echo "Building and running CPU..."
    ./make.sh
    ./run.sh 1 cpu > "$version_dir/cpu.txt"

    if [ "$run_gpu" -eq 1 ]; then
        echo "Running GPU..."
        ./run.sh 1 gpu > "$version_dir/gpu.txt"
    fi
done

echo "Done."