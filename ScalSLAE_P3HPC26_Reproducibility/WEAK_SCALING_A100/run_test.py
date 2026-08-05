#!/usr/bin/env python3

import sys
from pathlib import Path

TEST_DIR = Path(__file__).resolve().parent
sys.path.insert(0, str(TEST_DIR.parent))

from repro_common import RunConfiguration, parse_suite_args, run_suite


TEST_NAME = "WEAK_SCALING_A100"
PHYSICS = ("lagrange", "euler")
CONFIGURATIONS = (
    RunConfiguration("1_gpu", (1, 1, 1), (300, 300, 300), 1, 1, 1),
    RunConfiguration("2_gpus", (2, 1, 1), (300, 300, 600), 1, 2, 2),
    RunConfiguration("4_gpus", (2, 2, 1), (300, 600, 600), 1, 4, 4),
    RunConfiguration("8_gpus", (2, 4, 1), (300, 1200, 600), 2, 4, 4),
    RunConfiguration("12_gpus", (2, 6, 1), (300, 1800, 600), 3, 4, 4),
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
        vendor="nvidia",
        threads=1,
        max_tasks_per_node=4,
        ze_flat_hierarchy=None,
        args=args,
    )


if __name__ == "__main__":
    main()
