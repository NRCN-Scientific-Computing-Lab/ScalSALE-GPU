# ScalSALE GPU reproducibility guide

This guide contains only the steps needed to build ScalSALE, run it manually,
and submit the paper's experiment suites. Commands assume the repository root as
the working directory unless stated otherwise.

## 1. Prepare the environment

Load the modules supplied by your cluster. No site-specific versions are assumed.

- NVIDIA build: NVHPC Fortran, a compatible MPI implementation, and the NVIDIA
  GPU runtime/driver.
- Intel build: Intel oneAPI Fortran (`ifx`), a compatible MPI implementation,
  and the Intel Level Zero runtime for GPU execution.
- All builds: CMake, Make, Python 3, JSON-Fortran, and zlib.
- Paper suites: Slurm commands such as `sbatch` and `squeue`.

A typical site command has this general form:

```bash
module load <compiler> <mpi> <cmake> <python> <json-fortran> <zlib> <slurm>
```

The repository scripts intentionally do not load modules. Replace the commented
`???` placeholders with your site's environment commands if jobs do not inherit
the environment from the submission shell.

Before building, edit `src/CMakeLists.txt`. Its NVHPC branch currently contains
the site-specific JSON-Fortran path:

```text
/home/reemh/json-fortran/build_nvhpc
```

The Intel branch also contains a site-specific path. Replace the path in the
branch you use with your JSON-Fortran build directory. That directory must contain
the Fortran module files and a `lib` subdirectory.

## 2. Build ScalSALE

Run build commands from `src/Scripts`:

```bash
cd src/Scripts
./clean.sh <NVHPC|INTEL> [gpu] [cpu]
```

The compiler is `NVHPC` or `INTEL`. Supply `gpu`, `cpu`, or both; omitting the
targets builds both. A clean build recreates the corresponding build directory.

For later incremental builds:

```bash
./make.sh [gpu] [cpu]
```

The executables are created as `src/exec/main_gpu` and `src/exec/main_cpu`.

## 3. Run manually

Edit `src/Datafiles/datafile.json` before running. Its process layout must satisfy:

```text
npx * npy * npz = np
```

The `np` value must also equal the MPI process count. Set `parallel.threads` to
the OpenMP thread count. The paper layouts additionally require
`NX % NPZ = 0`, `NY % NPY = 0`, and `NZ % NPX = 0`.

From `src/Scripts`, run:

```bash
./run.sh <np> [gpu|cpu|main_gpu|main_cpu]
```

`np` is the MPI process count and the default mode is `gpu`.

To use an explicit datafile instead of the default one, run directly from the
repository root:

```bash
OMP_TARGET_OFFLOAD=DISABLED mpirun -np <np> src/exec/main_cpu <datafile.json>
OMP_TARGET_OFFLOAD=MANDATORY mpirun -np <np> src/exec/main_gpu <datafile.json>
```

## 4. Reproduce the paper results

Before submission, load the required environment, fix the JSON-Fortran path, and
replace the `???` module placeholder in `run_single_permutation_slurm.py` if the
batch job must load modules itself.

Run one suite from the repository root:

```bash
./ScalSALE_P3HPC26_Reproducibility/run_test.sh \
  <TEST_NAME> <PARTITION> [-account <ACCOUNT>] [options]
```

Available suites are:

| Test name | Target |
|---|---|
| `WEAK_SCALING_A100` | NVIDIA GPU |
| `WEAK_SCALING_PVC_COMPOSITE` | Intel GPU, composite devices |
| `WEAK_SCALING_PVC_FLAT` | Intel GPU, flat devices |
| `WEAK_SCALING_MPI_X` | MPI + OpenMP CPU |
| `WEAK_SCALING_CPU` | Full-MPI CPU |
| `SERIAL_TIMES` | One-process reference times |

Example:

```bash
./ScalSALE_P3HPC26_Reproducibility/run_test.sh \
  WEAK_SCALING_A100 <NVIDIA_PARTITION> -account <ACCOUNT>
```

Submit the complete paper matrix with:

```bash
./ScalSALE_P3HPC26_Reproducibility/run_test.sh ALL \
  -partition_cpu <CPU_PARTITION> \
  -partition_gpu_nvidia <NVIDIA_GPU_PARTITION> \
  -partition_gpu_intel <INTEL_GPU_PARTITION> \
  -account <ACCOUNT>
```

Omit the final account line when the cluster does not require one.

The default runs both Lagrangian and Eulerian physics. Common options are:

```text
--physics all|lagrange|euler
--max-cycles N
--clean-first
```

GPU suites also accept:

```text
--gpu-request-mode none|gpus|gpus-per-node|gres
--gpu-gres-name NAME
```

Use the default GPU request mode `none` when the partition assigns GPUs
automatically. CPU suites use the Intel compiler branch by default; select NVIDIA
with `export SCALSALE_CPU_VENDOR=nvidia`.

The scripts validate the configured layouts, build the required executable,
create a job-local datafile, generate `submit.sbatch`, and submit with `sbatch`.
Results are written to:

```text
ScalSALE_P3HPC26_Reproducibility/results/<TEST_NAME>/
```

Each run directory contains the patched datafile, build and solver logs, a
manifest, the generated Slurm script, and submission metadata.
