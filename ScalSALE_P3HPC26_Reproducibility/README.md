# ScalSALE P3HPC26 reproducibility runs

Submit one suite from the repository root:

```bash
./ScalSALE_P3HPC26_Reproducibility/run_test.sh WEAK_SCALING_A100 gpua100
```

The partition is a required positional argument. Supply an account only when the
cluster requires one:

```bash
./ScalSALE_P3HPC26_Reproducibility/run_test.sh WEAK_SCALING_A100 gpua100 -account rcl
```

Submit all suites:

```bash
./ScalSALE_P3HPC26_Reproducibility/run_test.sh ALL \
  -partition_cpu cpu_partition \
  -partition_gpu_nvidia nvidia_partition \
  -partition_gpu_intel intel_partition \
  -account optional_account
```

For `ALL`, A100 uses `-partition_gpu_nvidia`, both PVC suites use
`-partition_gpu_intel`, and MPI+X, full-MPI CPU, and serial runs use
`-partition_cpu`. The account remains optional.

Show the complete command help with:

```bash
./ScalSALE_P3HPC26_Reproducibility/run_test.sh --help
```

Every suite accepts `--physics all|lagrange|euler`, `--max-cycles N`, and
`--clean-first` after the partition and optional account.
GPU suites also accept `--gpu-request-mode` and `--gpu-gres-name`.

The default physics array is `("lagrange", "euler")`. CPU suites use Intel by
default; select NVIDIA without editing the scripts:

```bash
export SCALSALE_CPU_VENDOR=nvidia
```

## Configurations

| Suite | MPI ranks / GPUs | `(NPX, NPY, NPZ)` | `(NX, NY, NZ)` | Nodes | Ranks per node | Threads per rank |
|---|---:|---|---|---:|---:|---:|
| A100 | 1 | `(1,1,1)` | `(300,300,300)` | 1 | 1 | 1 |
| A100 | 2 | `(2,1,1)` | `(300,300,600)` | 1 | 2 | 1 |
| A100 | 4 | `(2,2,1)` | `(300,600,600)` | 1 | 4 | 1 |
| A100 | 8 | `(2,4,1)` | `(300,1200,600)` | 2 | 4 | 1 |
| A100 | 12 | `(2,6,1)` | `(300,1800,600)` | 3 | 4 | 1 |
| PVC composite | 1, 2, 4, 8, 12 | same as A100 | same as A100 | 1, 1, 1, 2, 3 | at most 4 | 1 |
| PVC flat | 2 | `(2,1,1)` | `(300,300,300)` | 1 | 2 | 1 |
| PVC flat | 4 | `(4,1,1)` | `(300,300,600)` | 1 | 4 | 1 |
| PVC flat | 8 | `(4,2,1)` | `(300,600,600)` | 1 | 8 | 1 |
| PVC flat | 16 | `(4,4,1)` | `(300,1200,600)` | 2 | 8 | 1 |
| PVC flat | 24 | `(4,6,1)` | `(300,1800,600)` | 3 | 8 | 1 |
| MPI+X CPU | 16 | `(4,4,1)` | `(600,600,300)` | 1 | 16 | 7 |
| MPI+X CPU | 32 | `(4,8,1)` | `(600,1200,300)` | 2 | 16 | 7 |
| MPI+X CPU | 48 | `(4,12,1)` | `(600,1800,300)` | 3 | 16 | 7 |
| Full MPI CPU | 112 | `(7,4,4)` | `(596,600,301)` | 1 | 112 | 1 |
| Full MPI CPU | 224 | `(7,8,4)` | `(596,1200,301)` | 2 | 112 | 1 |
| Full MPI CPU | 336 | `(7,8,6)` | `(894,1200,301)` | 3 | 112 | 1 |

`WEAK_SCALING_CPU` is included because the requested multi-node example explicitly
specified 224 ranks as two 112-rank nodes. `SERIAL_TIMES` submits one-rank runs for
every unique problem size in this table.

The GPU workload unit is `300x300x300`: one A100 or one PVC composite device gets
one unit. In PVC flat mode, two exposed flat devices together get one unit, so each
flat device receives half of that volume. For every corresponding case, the flat
layout is `(2*COMPOSITE_NPX, COMPOSITE_NPY, COMPOSITE_NPZ)` and uses the same global
problem size as the composite case.

Every configuration is checked before submission for:

```text
NPX * NPY * NPZ = MPI ranks
NX  = integer * NPZ
NY  = integer * NPY
NZ  = integer * NPX
```

The 112-rank bank layout cannot use exactly `595x600x300` while satisfying those
three divisibility conditions. The scripts therefore use `596x600x301`, with the
larger CPU cases scaled from the same per-rank shape.

The bank's 16- and 32-rank MPI+X layouts use `NPX=8`, which is incompatible with
`NZ=300`. The MPI+X layouts above are the non-bank exception: they keep both the
exact per-node problem size and the required x/z divisibility.

The PVC job scripts export the actual Level Zero setting
`ZE_FLAT_DEVICE_HIERARCHY=FLAT` or `COMPOSITE` before `mpirun`, so it applies to all
ranks on every allocated node.
