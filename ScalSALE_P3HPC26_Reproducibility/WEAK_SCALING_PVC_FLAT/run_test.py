#!/usr/bin/env python3

import sys
from pathlib import Path

TEST_DIR = Path(__file__).resolve().parent
sys.path.insert(0, str(TEST_DIR.parent))

from repro_common import RunConfiguration, parse_suite_args, run_suite


TEST_NAME = "WEAK_SCALING_PVC_FLAT"
PHYSICS = ("lagrange", "euler")
CONFIGURATIONS = (
    RunConfiguration("2_flat_devices", (2, 1, 1), (300, 300, 300), 1, 2, 2),
    RunConfiguration("4_flat_devices", (2, 2, 1), (300, 300, 600), 1, 4, 4),
    RunConfiguration("8_flat_devices", (4, 2, 1), (300, 600, 600), 1, 8, 8),
    RunConfiguration("16_flat_devices", (4, 4, 1), (300, 1200, 600), 2, 8, 8),
    RunConfiguration("24_flat_devices", (4, 6, 1), (300, 1800, 600), 3, 8, 8),
)


def main() -> None:
    args = parse_suite_args(
        TEST_NAME,
        gpu=True,
    )
    run_suite(
        test_name=TEST_NAME,
        test_dir=TEST_DIR,
        configurations=CONFIGURATIONS,
        physics_array=PHYSICS,
        mode="gpu",
        vendor="intel",
        threads=1,
        max_tasks_per_node=8,
        ze_flat_hierarchy="FLAT",
        args=args,
    )


if __name__ == "__main__":
    main()
