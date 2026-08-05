#!/usr/bin/env python3

import argparse
import runpy
import shlex
import subprocess
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Optional, Sequence, Tuple


REPRO_DIR = Path(__file__).resolve().parent
PROJECT_ROOT = REPRO_DIR.parent
RUN_CUSTOM = REPRO_DIR / "run_custom"
BASE_SINGLE_PERMUTATION = PROJECT_ROOT / "run_single_permutation_slurm.py"


@dataclass(frozen=True)
class RunConfiguration:
    label: str
    process_layout: Tuple[int, int, int]
    grid: Tuple[int, int, int]
    nodes: int
    tasks_per_node: int
    gpus_per_node: Optional[int] = None

    @property
    def processes(self) -> int:
        npx, npy, npz = self.process_layout
        return npx * npy * npz

    def validate(self, *, max_tasks_per_node: int, gpu: bool) -> None:
        if self.processes != self.nodes * self.tasks_per_node:
            raise ValueError(
                "{0}: layout has {1} ranks but nodes*tasks_per_node is {2}".format(
                    self.label, self.processes, self.nodes * self.tasks_per_node
                )
            )
        if self.tasks_per_node > max_tasks_per_node:
            raise ValueError(
                "{0}: {1} tasks per node exceeds the test limit of {2}".format(
                    self.label, self.tasks_per_node, max_tasks_per_node
                )
            )
        if gpu and self.gpus_per_node != self.tasks_per_node:
            raise ValueError(
                "{0}: GPU tests require one GPU per MPI rank on each node".format(
                    self.label
                )
            )
        if not gpu and self.gpus_per_node is not None:
            raise ValueError("{0}: CPU configuration has a GPU count".format(self.label))

        npx, npy, npz = self.process_layout
        nx, ny, nz = self.grid
        if nx % npz != 0 or ny % npy != 0 or nz % npx != 0:
            raise ValueError(
                "{0}: expected NX%NPZ=0, NY%NPY=0, and NZ%NPX=0".format(
                    self.label
                )
            )


def parse_suite_args(
    test_name: str,
    *,
    gpu: bool,
) -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Submit the {0} reproducibility configurations".format(test_name)
    )
    parser.add_argument(
        "--physics",
        choices=["all", "lagrange", "euler"],
        default="all",
        help="physics path to submit; default submits both",
    )
    parser.add_argument("--max-cycles", type=int)
    parser.add_argument("--partition", required=True)
    parser.add_argument("-account", "--account")
    parser.add_argument("--main-dir", type=Path, default=PROJECT_ROOT)
    parser.add_argument(
        "--output-dir",
        type=Path,
        default=REPRO_DIR / "results" / test_name,
    )
    parser.add_argument(
        "--clean-first",
        action="store_true",
        help="force a clean build for only the first submitted configuration",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="print run_custom commands without building or submitting",
    )
    if gpu:
        parser.add_argument(
            "--gpu-request-mode",
            choices=["none", "gpus", "gpus-per-node", "gres"],
            default="none",
            help=(
                "Slurm GPU resource syntax; default 'none' relies on the selected "
                "GPU partition"
            ),
        )
        parser.add_argument("--gpu-gres-name", default="gpu")
    return parser.parse_args()


def selected_physics(physics_option: str, physics_array: Sequence[str]) -> Sequence[str]:
    if physics_option == "all":
        return physics_array
    if physics_option not in physics_array:
        raise ValueError("physics {0} is not enabled for this test".format(physics_option))
    return (physics_option,)


def run_suite(
    *,
    test_name: str,
    test_dir: Path,
    configurations: Sequence[RunConfiguration],
    physics_array: Sequence[str],
    mode: str,
    vendor: str,
    threads: int,
    max_tasks_per_node: int,
    ze_flat_hierarchy: Optional[str],
    args: argparse.Namespace,
) -> None:
    gpu = mode == "gpu"
    helper = test_dir / "run_single_permutation_slurm.py"
    if not RUN_CUSTOM.exists():
        raise FileNotFoundError("run_custom not found: {0}".format(RUN_CUSTOM))
    if not helper.exists():
        raise FileNotFoundError("test helper not found: {0}".format(helper))

    for configuration in configurations:
        configuration.validate(max_tasks_per_node=max_tasks_per_node, gpu=gpu)

    first = True
    for physics in selected_physics(args.physics, physics_array):
        for configuration in configurations:
            npx, npy, npz = configuration.process_layout
            nx, ny, nz = configuration.grid
            command = [
                str(RUN_CUSTOM),
                "-mode",
                mode,
                "-vendor",
                vendor,
                "-physics",
                physics,
                "-threads",
                str(threads),
                "-npx",
                str(npx),
                "-npy",
                str(npy),
                "-npz",
                str(npz),
                "-nx",
                str(nx),
                "-ny",
                str(ny),
                "-nz",
                str(nz),
                "-nodes",
                str(configuration.nodes),
                "-tasks_per_node",
                str(configuration.tasks_per_node),
                "-partition",
                args.partition,
                "-main_dir",
                str(args.main_dir.resolve()),
                "-output_dir",
                str(args.output_dir.resolve()),
                "-helper_script",
                str(helper),
            ]
            if args.account:
                command.extend(["-account", args.account])
            if gpu:
                command.extend(
                    [
                        "-gpus_per_node",
                        str(configuration.gpus_per_node),
                        "-gpu_request_mode",
                        args.gpu_request_mode,
                        "-gpu_gres_name",
                        args.gpu_gres_name,
                    ]
                )
            if ze_flat_hierarchy:
                command.extend(["-ze_flat_hierarchy", ze_flat_hierarchy])
            if args.max_cycles is not None:
                command.extend(["-max_cycles", str(args.max_cycles)])
            if first and args.clean_first:
                command.append("-clean")

            print(
                "[{0}] {1}/{2}: {3}".format(
                    test_name,
                    physics,
                    configuration.label,
                    " ".join(shlex.quote(part) for part in command),
                ),
                flush=True,
            )
            if not args.dry_run:
                subprocess.run(command, cwd=args.main_dir.resolve(), check=True)
            first = False


def _option_value(option: str) -> Optional[str]:
    try:
        return sys.argv[sys.argv.index(option) + 1]
    except (ValueError, IndexError):
        return None


def delegate_single_permutation(
    *,
    test_name: str,
    expected_mode: str,
    expected_vendor: str,
    max_tasks_per_node: int,
    ze_flat_hierarchy: Optional[str] = None,
) -> None:
    mode = _option_value("-mode")
    vendor = _option_value("-vendor")
    tasks_value = _option_value("-tasks_per_node")
    if mode != expected_mode:
        raise SystemExit(
            "{0} helper requires -mode {1}".format(test_name, expected_mode)
        )
    if vendor != expected_vendor:
        raise SystemExit(
            "{0} helper requires -vendor {1}".format(test_name, expected_vendor)
        )
    if tasks_value is None or int(tasks_value) > max_tasks_per_node:
        raise SystemExit(
            "{0} permits at most {1} tasks per node".format(
                test_name, max_tasks_per_node
            )
        )
    if ze_flat_hierarchy:
        requested_hierarchy = _option_value("-ze_flat_hierarchy")
        if requested_hierarchy is None:
            sys.argv.extend(["-ze_flat_hierarchy", ze_flat_hierarchy])
        elif requested_hierarchy != ze_flat_hierarchy:
            raise SystemExit(
                "{0} requires ZE_FLAT_DEVICE_HIERARCHY={1}".format(
                    test_name, ze_flat_hierarchy
                )
            )

    runpy.run_path(str(BASE_SINGLE_PERMUTATION), run_name="__main__")
