#!/bin/bash
# ??? Add the site-specific environment/module commands required for this run.

#SCR_LIB_FLAGS="-lscrf -L${SCR_PATH}/scr/lib64 -lscr"
#SCR_INCLUDE_FLAGS="-I${SCR_PATH}/scr/include -I/usr/include -I."
rm -rf Silo_Diagnostics/*
rm *.so 2>/dev/null

export SCR_CONF_FILE=`pwd`/../CR/scr_conf.conf
export SCR_RUNS=4
if test "$1" = "cr"
then
	scr_mpirun -n 1 -mca btl self,sm,openib python ../Main/main.py
else
    NPROCS=$1
    MODE=${2:-gpu}

    # Determine executable and settings based on mode
    case "$MODE" in
        gpu|main_gpu)
            EXECUTABLE="../exec/main_gpu"
            export OMP_TARGET_OFFLOAD=MANDATORY
            echo "================================================"
            echo "Running GPU version with $NPROCS MPI processes"
            echo "OMP_TARGET_OFFLOAD=MANDATORY"
            echo "================================================"
            ;;
        cpu|main_cpu)
            EXECUTABLE="../exec/main_cpu"
            export OMP_TARGET_OFFLOAD=DISABLED
            # CPU-specific optimization
	    
            #export OMP_PROC_BIND=close
            #export OMP_PLACES=cores

            echo "================================================"
            echo "Running CPU version with $NPROCS MPI processes"
            echo "OMP_TARGET_OFFLOAD=DISABLED"
            #echo "OMP_PROC_BIND=close, OMP_PLACES=cores"
            echo "================================================"
            ;;
        *)
            echo "Unknown mode: $MODE"
            echo "Usage: ./run.sh <num_processes> [gpu|cpu|main_gpu|main_cpu]"
            exit 1
            ;;
    esac

    # Check if executable exists
    if [ ! -f "$EXECUTABLE" ]; then
        echo "ERROR: Executable not found: $EXECUTABLE"
        echo "Please build first using ./clean.sh or ./make.sh"
        exit 1
    fi

     # STANDARD RUN COMMAND:
     mpirun -np $NPROCS --map-by node --bind-to none $EXECUTABLE

     # RUN COMMAND FOR NSYS:
     #nsys profile --stats=true mpirun -np $NPROCS --map-by node --bind-to none $EXECUTABLE
     #nsys profile --stats=true --trace=cuda,nvtx,osrt,openmp --output=kernel_on_gpu_line_calc_on_cpu mpirun -np $NPROCS --map-by node --bind-to none ../exec/main

     # START PROFILING ACCORDING TO cudaProfileStart()
     #nsys profile --capture-range=cudaProfilerApi --trace=cuda,osrt --cuda-memory-usage=true --gpu-metrics-device=all --stats=true mpirun -np $NPROCS --map-by node --bind-to none $EXECUTABLE

     # START PROFILING RIGHT AWAY:
     #nsys profile --trace=cuda,osrt --cuda-memory-usage=true --gpu-metrics-device=all --stats=true mpirun -np $NPROCS --map-by node --bind-to none $EXECUTABLE


     # RUN COMMAND FOR NCOMPUTE:
     # Profile only advect kernels using regex pattern, start profiling only when cudaProfilerStart() is called
     #ncu -k "regex:^nvkernel_advect_module" --profile-from-start no --set detailed --export ADVECT_KERNELS_NEW mpirun -np $NPROCS --map-by node --bind-to none $EXECUTABLE

     #ncu --set default --print-summary per-kernel mpirun -np $NPROCS --map-by node --bind-to none $EXECUTABLE
     #ncu --set detailed mpirun -np $NPROCS --map-by node --bind-to none ../exec/main
     #ncu --set detailed --export SLOW_TOP_LINE_CALC mpirun -np $NPROCS --map-by node --bind-to none $EXECUTABLE
     #ncu --set default --export Ncu_V100_advect mpirun -np $NPROCS --map-by node --bind-to none ../exec/main

     #ncu --metrics launch__registers_per_thread --export Ncu_A100_1002cyc_regiters -np $NPROCS --map-by node --bind-to none $EXECUTABLE

     #ncu --replay-mode range --export Ncu_Advect_Report_V100_1 mpirun -np $NPROCS --map-by node --bind-to none ../exec/main

     #ncu --print-summary mpirun -np $NPROCS --map-by node --bind-to none ../exec/main

    # vtune -collect hpc-performance \
    #-knob enable-stack-collection=true \
    #-knob sampling-interval=1 \
    #-r vtune_hpc_comprehensive \

    #vtune -collect hpc-performance \
    #-r vtune_report_cpu -- mpirun -np $NPROCS --map-by node --bind-to none ../exec/main

    #vtune -collect hotspots mpirun -n $NPROCS ../exec/main
fi
