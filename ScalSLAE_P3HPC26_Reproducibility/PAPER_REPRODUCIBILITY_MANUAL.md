# ScalSALE GPU: build, run, and P3HPC26 reproducibility manual

This document is a self-contained guide for readers of the paper who want to
compile ScalSALE, run an individual problem manually, or submit the paper's
reproducibility experiments on a Slurm cluster.

All commands below assume the shell starts in the repository root. Replace module
names, partitions, accounts, and dependency paths with the equivalents provided by
your computing site.

## 1. Repository layout

The files most relevant to building and running the code are:

```text
src/CMakeLists.txt                         compiler and offload flags
src/Datafiles/datafile.json               default problem definition
src/Scripts/clean.sh                      clean CMake configuration and build
src/Scripts/make.sh                       incremental rebuild
src/Scripts/run.sh                        local/manual MPI launcher
src/exec/main_cpu                         generated CPU executable
src/exec/main_gpu                         generated GPU executable
run_single_permutation_slurm.py           creates and submits one Slurm job
ScalSLAE_P3HPC26_Reproducibility/
  run_test.sh                             public test-suite dispatcher
  run_custom                              build-and-submit wrapper
  repro_common.py                         shared validation and submission logic
  <TEST_NAME>/run_test.py                 test configuration table
  <TEST_NAME>/run_single_permutation_slurm.py
                                           test-specific submission policy
  results/                                generated test outputs
```

The spelling `ScalSLAE_P3HPC26_Reproducibility` is the directory name used by the
repository and should be preserved in commands.

## 2. Software and system requirements

The build requires:

- Linux and Bash.
- CMake 3.5.2 or newer and Make.
- An MPI implementation and MPI Fortran compiler wrapper.
- NVIDIA HPC SDK (`mpif90`) for NVIDIA builds, or Intel oneAPI/ifx MPI
  (`mpiifx`) for Intel builds.
- OpenMP support. GPU builds additionally require OpenMP target offload support.
- JSON-Fortran, including its module files and `libjsonfortran` library.
- zlib.
- Python 3 for the reproducibility scripts.
- Slurm commands (`sbatch` and `squeue`) for automated paper tests.
- Lmod's `ml` command in submitted jobs, unless the generated module-loading lines
  are adapted for the target cluster.

NVIDIA GPU builds currently target A100 (`cc80`). Intel GPU builds target SPIR-V
with `-fopenmp-targets=spir64` and require an Intel Level Zero runtime.

### Site-specific settings that must be checked

The current `src/CMakeLists.txt` contains site-specific JSON-Fortran paths for the
NVHPC and Intel compiler branches. Before compiling on another system, change those
paths to the location of the JSON-Fortran build for the selected compiler. The
directory must contain the Fortran module/include files and a `lib` subdirectory.

The generated Slurm jobs currently load these site-specific module sets:

```text
NVIDIA: ml pgi mlog nvhpc-hpcx
Intel:  ml intel/18.0.1.163 openmpi/4.0.4_intel mpi/impi-intel2018
```

If the cluster uses different module names, update `module_lines()` in
`run_single_permutation_slurm.py` before submitting tests.

The NVIDIA compiler flags in `src/CMakeLists.txt` include `-gpu=cc80`. Change the
compute capability when targeting a different NVIDIA GPU generation.

## 3. Compiling manually

Run the build scripts from `src/Scripts` because their relative paths assume that
working directory:

```bash
cd src/Scripts
```

### 3.1 Initial or clean build

`clean.sh` removes and recreates the selected build directories, configures CMake,
and builds serially so that Fortran module dependencies are respected.

Build both CPU and GPU executables with NVHPC:

```bash
./clean.sh NVHPC gpu cpu
```

Build only the A100 GPU executable:

```bash
./clean.sh NVHPC gpu
```

Build only the NVHPC CPU executable:

```bash
./clean.sh NVHPC cpu
```

Build Intel GPU and CPU executables:

```bash
./clean.sh INTEL gpu cpu
```

The compiler selection performed by the script is:

| Argument | MPI Fortran wrapper | GPU target |
|---|---|---|
| `NVHPC` | `mpif90` | NVIDIA OpenMP offload, `cc80` |
| `INTEL` | `mpiifx` | Intel OpenMP offload, `spir64` |

The script treats `NVHPC` specially and uses `mpiifx` for the other compiler branch;
therefore use the documented `INTEL` spelling rather than an arbitrary value.

With no target after the compiler, `clean.sh` builds both `gpu` and `cpu`.

> **Warning:** `clean.sh` deletes the corresponding `build_gpu` and/or `build_cpu`
> directory before reconfiguring it.

### 3.2 Incremental rebuild

Once the build directories exist, use `make.sh`:

```bash
./make.sh gpu
./make.sh cpu
./make.sh gpu cpu
```

With no arguments, the current script rebuilds both targets:

```bash
./make.sh
```

If `make.sh` reports that a build directory does not exist, run the corresponding
`clean.sh` command first.

### 3.3 Build products

Successful builds create:

```text
src/exec/main_gpu
src/exec/main_cpu
```

The intermediate CMake builds are kept in:

```text
build_gpu/
build_cpu/
```

Only one `main_gpu` filename is used. Building with Intel after NVHPC, or NVHPC
after Intel, overwrites that path with the newly selected vendor's executable.

## 4. Understanding `datafile.json`

The default input is `src/Datafiles/datafile.json`. The executable accepts an
alternative JSON path as its first command-line argument. If no argument is given,
it reads `../Datafiles/datafile.json`, which is correct when launched from
`src/Scripts`.

The principal sections are described below.

### `cell_set`

- `mesh_type` selects the mesh coordinate/type representation.
- `boundary_conditions` contains the six face boundary-condition codes.

The boundary values are internal numeric codes; retain the paper input values unless
the boundary-condition mapping in the source has also been reviewed.

### Material definitions and `layers_materials`

Top-level objects such as `Be`, `Al`, and `Cu` define material and equation-of-state
properties, including:

- `index`
- `eos_type`
- `gamma_gas`
- reference density `rho_0`
- atomic quantities `A`, `Z`, and `Z_2`

`layers_materials.materials` chooses which named material objects are used.
`number_layers_i/j/k` and `number_cells_i/j/k` define the layer count and global
problem dimensions.

For the paper scripts, the first entries of the cell arrays are rewritten as:

```text
number_cells_i = NX
number_cells_j = NY
number_cells_k = NZ
```

### `data`

- `name` selects the initialized problem; the paper input uses `sod_3d`.
- `nxb`, `nyb`, and `nzb` control boundary/halo-related problem parameters.

### `simulation_parameters`

Important time-integration controls include:

- `time_final`: requested final simulation time.
- `dt`: initial time step.
- `dt_max`: maximum permitted time step.
- `max_ncyc`: maximum cycle count.
- `init_temperature`: initial temperature.
- `cyl`: geometry-related cylindrical switch/value.

The reproducibility driver preserves these values except that `--max-cycles N`
overrides `max_ncyc` in each generated job-local datafile.

### `rezone_advect`

- `rezone_type: "lagrange"` selects the Lagrangian path.
- `rezone_type: "euler"` selects the Eulerian/rezone-and-advect path.
- `shorter_advect` selects the shortened advection option when supported.

The paper test drivers run both `lagrange` and `euler` unless `--physics` selects
only one.

### `parallel`

```json
"parallel": {
  "np": 4,
  "npx": 2,
  "npy": 2,
  "npz": 1,
  "threads": 1
}
```

- `np` must equal the MPI process count passed to `mpirun`.
- `npx * npy * npz` must equal `np`.
- `threads` should match `OMP_NUM_THREADS` and Slurm's CPUs per task.

Because the implementation maps the global axes to the process layout with an x/z
flip, paper configurations obey:

```text
NX % NPZ == 0
NY % NPY == 0
NZ % NPX == 0
```

The automated tests validate these relations before submission.

### Other sections

- `switches` controls algorithmic options such as vertex mass and symmetry.
- `contours` and `zone` describe the mesh geometry and zoning.
- `diagnostics` describes requested diagnostic types and variables. Actual output
  availability depends on the diagnostics enabled in the current build.

For paper reproduction, begin with the supplied datafile and change only the problem
size, process layout, thread count, physics mode, or maximum cycles unless a new
physical problem is intentionally being defined.

## 5. Running manually

### 5.1 Using `run.sh`

The supplied default datafile requests 64 MPI processes with layout `(4,4,4)`.
From `src/Scripts`, run that input on the GPU with:

```bash
./run.sh 64 gpu
```

Run the same input with the CPU executable:

```bash
./run.sh 64 cpu
```

The accepted aliases are `gpu`, `main_gpu`, `cpu`, and `main_cpu`. GPU is the default
mode when the second argument is omitted.

`run.sh` performs these important actions:

- Selects `../exec/main_gpu` or `../exec/main_cpu`.
- Sets `OMP_TARGET_OFFLOAD=MANDATORY` for GPU execution.
- Sets `OMP_TARGET_OFFLOAD=DISABLED` for CPU execution.
- Launches `mpirun -np N --map-by node --bind-to none`.
- Uses the default `src/Datafiles/datafile.json` because it does not pass an input
  path to the executable.
- Removes the contents of `Silo_Diagnostics` relative to the script working
  directory before running.

Before launching, edit `parallel.np/npx/npy/npz/threads` so they match the command.
For an OpenMP CPU run, also set the thread count:

```bash
export OMP_NUM_THREADS=7
./run.sh 16 cpu
```

and set `parallel.threads` to `7` in the datafile.

### 5.2 Direct execution with an explicit datafile

Passing the input path explicitly avoids dependence on the working directory:

```bash
OMP_TARGET_OFFLOAD=DISABLED \
OMP_NUM_THREADS=1 \
mpirun -np 4 src/exec/main_cpu /absolute/path/to/datafile.json
```

For NVIDIA GPU execution:

```bash
OMP_TARGET_OFFLOAD=MANDATORY \
OMP_NUM_THREADS=1 \
mpirun -np 4 src/exec/main_gpu /absolute/path/to/datafile.json
```

For Intel PVC, set the Level Zero hierarchy consistently with how ranks represent
the hardware:

```bash
export ZE_FLAT_DEVICE_HIERARCHY=COMPOSITE
# or
export ZE_FLAT_DEVICE_HIERARCHY=FLAT
```

In composite mode, one MPI rank represents one composite PVC device. In flat mode,
two exposed flat devices represent the same physical-GPU workload used by one
composite rank.

## 6. Running the paper test suites

The entry point is:

```text
ScalSLAE_P3HPC26_Reproducibility/run_test.sh
```

Display its current interface with either:

```bash
./ScalSLAE_P3HPC26_Reproducibility/run_test.sh -h
./ScalSLAE_P3HPC26_Reproducibility/run_test.sh --help
```

### 6.1 Run one suite

The partition is required. The Slurm account is optional:

```bash
./ScalSLAE_P3HPC26_Reproducibility/run_test.sh \
  WEAK_SCALING_A100 <NVIDIA_PARTITION>
```

```bash
./ScalSLAE_P3HPC26_Reproducibility/run_test.sh \
  WEAK_SCALING_A100 <NVIDIA_PARTITION> -account <ACCOUNT>
```

Examples for the other hardware classes:

```bash
./ScalSLAE_P3HPC26_Reproducibility/run_test.sh \
  WEAK_SCALING_PVC_COMPOSITE <INTEL_GPU_PARTITION>

./ScalSLAE_P3HPC26_Reproducibility/run_test.sh \
  WEAK_SCALING_MPI_X <CPU_PARTITION>
```

### 6.2 Run all suites

`ALL` requires three partitions because the experiments target three hardware
classes:

```bash
./ScalSLAE_P3HPC26_Reproducibility/run_test.sh ALL \
  -partition_cpu <CPU_PARTITION> \
  -partition_gpu_nvidia <NVIDIA_GPU_PARTITION> \
  -partition_gpu_intel <INTEL_GPU_PARTITION>
```

Add one shared account when necessary:

```bash
./ScalSLAE_P3HPC26_Reproducibility/run_test.sh ALL \
  -partition_cpu <CPU_PARTITION> \
  -partition_gpu_nvidia <NVIDIA_GPU_PARTITION> \
  -partition_gpu_intel <INTEL_GPU_PARTITION> \
  -account <ACCOUNT>
```

Partition routing is:

| Suites | Partition argument |
|---|---|
| `WEAK_SCALING_A100` | `-partition_gpu_nvidia` |
| `WEAK_SCALING_PVC_COMPOSITE`, `WEAK_SCALING_PVC_FLAT` | `-partition_gpu_intel` |
| `WEAK_SCALING_MPI_X`, `WEAK_SCALING_CPU`, `SERIAL_TIMES` | `-partition_cpu` |

### 6.3 Common suite options

Options follow the partition arguments:

```text
-account ACCOUNT
--physics all|lagrange|euler
--max-cycles N
--clean-first
--dry-run
```

Use `--dry-run` first to inspect every generated `run_custom` command without
building or submitting:

```bash
./ScalSLAE_P3HPC26_Reproducibility/run_test.sh \
  WEAK_SCALING_A100 <NVIDIA_PARTITION> --dry-run
```

GPU suites additionally accept:

```text
--gpu-request-mode none|gpus|gpus-per-node|gres
--gpu-gres-name NAME
```

The default is `none`, which relies on the selected GPU partition and emits no
explicit Slurm GPU resource directive. This is appropriate for clusters where the
GPU partition itself assigns devices. If required by another site:

```bash
... --gpu-request-mode gpus-per-node
```

or:

```bash
... --gpu-request-mode gres --gpu-gres-name gpu
```

GPU-specific options should be used with an individual GPU suite rather than `ALL`,
because the CPU suite parsers do not accept GPU resource options.

CPU suites use the NVHPC compiler branch by default. Override it for a CPU-only Intel
environment with:

```bash
export SCALSALE_CPU_VENDOR=intel
```

## 7. Paper experiment matrix

All suites run both physics paths by default. Tuple order is `(NX, NY, NZ)` for the
problem size and `(NPX, NPY, NPZ)` for the MPI layout.

### NVIDIA A100 and Intel PVC composite

Both use the same global sizes and layouts. Each A100/composite process receives a
`300x300x300` workload.

| Processes/devices | Layout | Problem size | Nodes | Tasks per node |
|---:|---|---|---:|---:|
| 1 | `(1,1,1)` | `(300,300,300)` | 1 | 1 |
| 2 | `(2,1,1)` | `(300,300,600)` | 1 | 2 |
| 4 | `(2,2,1)` | `(300,600,600)` | 1 | 4 |
| 8 | `(2,4,1)` | `(300,1200,600)` | 2 | 4 |
| 12 | `(2,6,1)` | `(300,1800,600)` | 3 | 4 |

The A100 suite uses NVIDIA compilation. The PVC composite suite uses Intel
compilation and exports `ZE_FLAT_DEVICE_HIERARCHY=COMPOSITE`.

### Intel PVC flat

The flat layout doubles only the composite `NPX` dimension:

```text
FLAT = (2 * COMPOSITE_NPX, COMPOSITE_NPY, COMPOSITE_NPZ)
```

Two flat processes/devices together receive the same `300x300x300` physical-GPU
workload as one composite process.

| Flat processes | Layout | Problem size | Nodes | Tasks per node |
|---:|---|---|---:|---:|
| 2 | `(2,1,1)` | `(300,300,300)` | 1 | 2 |
| 4 | `(4,1,1)` | `(300,300,600)` | 1 | 4 |
| 8 | `(4,2,1)` | `(300,600,600)` | 1 | 8 |
| 16 | `(4,4,1)` | `(300,1200,600)` | 2 | 8 |
| 24 | `(4,6,1)` | `(300,1800,600)` | 3 | 8 |

This suite exports `ZE_FLAT_DEVICE_HIERARCHY=FLAT`.

### CPU MPI+X

Each MPI process uses seven OpenMP threads. A full node has 16 processes and 112
CPU cores.

| Processes | Threads/process | Layout | Problem size | Nodes |
|---:|---:|---|---|---:|
| 16 | 7 | `(4,4,1)` | `(600,600,300)` | 1 |
| 32 | 7 | `(4,8,1)` | `(600,1200,300)` | 2 |
| 48 | 7 | `(4,12,1)` | `(600,1800,300)` | 3 |

### CPU full MPI

Each process uses one thread and a full node has 112 MPI processes.

| Processes | Layout | Problem size | Nodes |
|---:|---|---|---:|
| 112 | `(7,4,4)` | `(596,600,301)` | 1 |
| 224 | `(7,8,4)` | `(596,1200,301)` | 2 |
| 336 | `(7,8,6)` | `(894,1200,301)` | 3 |

The one-node size is close to `600x600x300` but adjusted so the grid is divisible by
the selected process layout under the x/z mapping.

### Serial reference times

`SERIAL_TIMES` runs one process and one thread for every unique global problem size
used above:

```text
(300,300,300)
(300,300,600)
(300,600,600)
(300,1200,600)
(300,1800,600)
(596,600,301)
(600,600,300)
(596,1200,301)
(600,1200,300)
(894,1200,301)
(600,1800,300)
```

There are 5 A100, 5 PVC composite, 5 PVC flat, 3 MPI+X, 3 full-MPI CPU, and 11
serial configuration points. With both physics paths, the complete matrix contains
64 Slurm jobs.

## 8. What the automated workflow does

For each selected configuration, the scripts perform the following sequence:

1. `run_test.sh` selects a test driver and supplies the correct partition.
2. The test's `run_test.py` loops over physics modes and configuration entries.
3. `repro_common.py` validates process counts, per-node limits, GPU counts, and grid
   divisibility.
4. The test invokes `run_custom` once for that configuration.
5. `run_custom` selects NVHPC or Intel and CPU or GPU, then performs a clean or
   incremental build according to `.run_custom_build_state.json`.
6. A unique output directory is created.
7. `run_single_permutation_slurm.py` copies the base JSON into that directory and
   changes only the grid, process layout, thread count, physics path, and optional
   maximum cycles.
8. A `submit.sbatch` file is generated with the requested nodes, total tasks, tasks
   per node, CPUs per task, partition, and optional account/GPU resources.
9. The job is submitted with `sbatch`.

GPU jobs set `OMP_TARGET_OFFLOAD=MANDATORY`; CPU jobs use the CPU executable and the
requested `OMP_NUM_THREADS`. PVC test helpers inject `COMPOSITE` or `FLAT`
automatically.

Before submitting a GPU job, `run_custom` queries the current user's active jobs and
may add an `afterany` dependency on the latest active job. This can serialize GPU
submissions when jobs are already queued.

The original `src/Datafiles/datafile.json` is not edited by the automated workflow.

## 9. Results and troubleshooting

Results are written below:

```text
ScalSLAE_P3HPC26_Reproducibility/results/<TEST_NAME>/
```

Each configuration directory normally contains:

```text
build.log          build commands and compiler output
datafile.json      job-local, patched input
manifest.json      requested configuration and build action
submit.sbatch      generated Slurm script
submission.json    sbatch command, response, and job ID
solver.log         solver metadata and combined solver output
slurm-<job>.out    Slurm standard output
slurm-<job>.err    Slurm standard error
```

Common problems:

- **`sbatch` not found:** load the site's Slurm environment.
- **Requested node configuration is unavailable:** the partition or GPU resource
  syntax does not match the cluster. The default `--gpu-request-mode none` avoids
  explicit GPU resource directives; otherwise select the site's required mode.
- **Invalid account/partition combination:** omit `-account` to use the user default,
  or provide the correct account for that partition.
- **Missing `mpif90` or `mpiifx`:** load the matching compiler and MPI modules before
  building.
- **JSON-Fortran module/library not found:** correct the site-specific paths in
  `src/CMakeLists.txt` and clean-build again.
- **GPU code runs on the host:** verify the offload runtime, device visibility,
  compiler target, and `OMP_TARGET_OFFLOAD=MANDATORY`.
- **Process-layout error:** verify `NP = NPX*NPY*NPZ` and the three grid divisibility
  rules.
- **Thread mismatch warning:** make `parallel.threads`, `OMP_NUM_THREADS`, and
  `--cpus-per-task` agree.

### Important mixed-vendor executable caveat

Both NVIDIA and Intel GPU builds write to the shared path `src/exec/main_gpu`, and
generated jobs currently execute that shared path. A later vendor build can therefore
replace the executable while an earlier job is still pending. On systems where jobs
do not start immediately, the safest procedure is to submit and complete NVIDIA and
Intel GPU suites separately, or stage vendor-specific executable copies before
running a mixed-vendor `ALL` submission.

For the same reason, preserve the exact source revision, compiler/module versions,
datafile, and generated manifests alongside reported results.
