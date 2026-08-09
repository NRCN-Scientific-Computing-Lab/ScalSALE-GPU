#!/usr/bin/env python3

import os
import sys
from pathlib import Path

TEST_DIR = Path(__file__).resolve().parent
sys.path.insert(0, str(TEST_DIR.parent))

from repro_common import RunConfiguration, parse_suite_args, run_suite


TEST_NAME = "WEAK_SCALING_CPU"
PHYSICS = ("lagrange", "euler")
VENDOR = os.environ.get("SCALSALE_CPU_VENDOR", "intel")
CONFIGURATIONS = (
    RunConfiguration("112_processes", (7, 4, 4), (596, 600, 301), 1, 112),
    RunConfiguration("224_processes", (7, 8, 4), (596, 1200, 301), 2, 112),
    RunConfiguration("336_processes", (7, 8, 6), (894, 1200, 301), 3, 112),
)


def main() -> None:
    args = parse_suite_args(
        TEST_NAME,
        gpu=False,
    )
    run_suite(
        test_name=TEST_NAME,
        test_dir=TEST_DIR,
        configurations=CONFIGURATIONS,
        physics_array=PHYSICS,
        mode="serial",
        vendor=VENDOR,
        threads=1,
        max_tasks_per_node=112,
        ze_flat_hierarchy=None,
        args=args,
    )


if __name__ == "__main__":
    main()
