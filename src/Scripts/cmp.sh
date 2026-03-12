# .
#!/usr/bin/env bash
# Usage: ./cmp.sh [-v for vimdiff] <c for clean | m for make | r for run>
set -euo pipefail

use_vimdiff=0

if [ "${1:-}" = "-v" ]; then
    use_vimdiff=1
    shift
fi

if [ $# -ne 1 ]; then
    echo "Usage: $0 [-v] [c|m|r]"
    exit 1
fi

mode="$1"

case "$mode" in
    c)
        ./clean.sh NVHPC
        ;;
    m)
        ./make.sh
        ;;
    r)
        echo "Skipping build, running existing binaries."
        ;;
    *)
        echo "Invalid argument. Use 'c', 'm', or 'r'."
        exit 1
        ;;
esac

./run.sh 1 cpu
mv track_validation_lagrangian track_validation_lagrangian_cpu

./run.sh 1 gpu
mv track_validation_lagrangian track_validation_lagrangian_gpu

if [ "$use_vimdiff" -eq 1 ]; then
    vimdiff track_validation_lagrangian_cpu track_validation_lagrangian_gpu
else
    if diff track_validation_lagrangian_cpu track_validation_lagrangian_gpu; then
        echo "No differences found."
    fi
fi