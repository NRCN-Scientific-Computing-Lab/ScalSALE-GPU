# .
#!/usr/bin/env bash
# Usage: ./cmp.sh [-v for vimdiff] <c for clean | m for make>
set -euo pipefail

use_vimdiff=0

if [ "$1" = "-v" ]; then
    use_vimdiff=1
    shift
fi

if [ $# -ne 1 ]; then
    echo "Usage: $0 [-v] [c|m]"
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
    *)
        echo "Invalid argument. Use 'c' or 'm'."
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