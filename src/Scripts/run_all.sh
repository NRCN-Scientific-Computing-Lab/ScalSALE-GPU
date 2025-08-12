#!/bin/bash

set -e

sizes=(99 158 251 399)
json_file="../Datafiles/datafile.json"
backup_file="../Datafiles/datafile_backup.json"

# Backup the original JSON
cp "$json_file" "$backup_file"

for size in "${sizes[@]}"; do
    echo "==============================="
    echo "Running for size $size"
    echo "==============================="

    # Restore original JSON before editing
    cp "$backup_file" "$json_file"

    # Replace second number in number_cells_j/i/k arrays (e.g., 359 → $size)
    sed -i -E "/\"number_cells_j\"/ {N;N; s/([0-9]+)([^0-9]*)$/${size}\2/}" "$json_file"
    sed -i -E "/\"number_cells_i\"/ {N;N; s/([0-9]+)([^0-9]*)$/${size}\2/}" "$json_file"
    sed -i -E "/\"number_cells_k\"/ {N;N; s/([0-9]+)([^0-9]*)$/${size}\2/}" "$json_file"

    # === SERIAL ===
    echo "→ Running: ./run.sh SERIAL"
    serial_output=$(./run.sh SERIAL 2>&1)
    echo "$serial_output" | grep -Ei 'Mismatch|V&V|Total Time:|Total cycle time'
    echo "✓ SERIAL finished"

    # Move and rename the vnv* file
    mkdir -p "baseline_vnv_size_$size"
    vnv_file=$(ls vnv* 2>/dev/null | head -n 1)

    if [[ -n "$vnv_file" ]]; then
        mv "$vnv_file" "baseline_vnv_size_$size/$vnv_file"
        cp "baseline_vnv_size_$size/$vnv_file" "baseline_vnv"
        echo "✓ Moved $vnv_file → baseline_vnv_size_$size/"
        echo "✓ Copied as → baseline_vnv"
    else
        echo "✗ No vnv* output found after SERIAL"
        exit 1
    fi

    # === CPU & GPU ===
    for mode in CPU GPU; do
        echo "→ Running: ./run.sh $mode"
        ./run.sh "$mode" 2>&1 | grep -Ei 'Mismatch|V&V|Total Time:|Total cycle time'
        echo "✓ $mode finished"
    done

    echo ""
done

# Restore the original JSON
mv "$backup_file" "$json_file"
echo "✓ JSON file restored"

