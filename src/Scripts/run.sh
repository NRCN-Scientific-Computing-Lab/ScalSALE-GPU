#!/bin/bash
#module purge
#module load cmake/X.XX.2 eclipse/2018 anaconda/2.5.0 gcc/9.1.0 intel/2017 mpi/openmpi-1.6.4-gcc-9.1.0 pFUnit/3.2.9-intel-openmpi hdf5/1.8.9-openmpi-1.6.4-gcc-9.1.0 silo/4.8-openmpi-1.6.4-gcc-9.1.0
#module load cmake/X.XX.2 eclipse/2018 gcc/9.1.0 intel/2017 json-fortran/intel-2017 mpi/openmpi-1.10.4-intel-2017 pFUnit/3.2.9-openmpi-1.10.4-intel-2017 hdf5/1.8.9-openmpi-1.10.4-intel-2017 silo/4.8-openmpi-1.10.4-intel-2017 scr/1.2.0-openmpi-1.10.4-intel-2017
#module load anaconda/2.5.0
#source activate backus-openmpi-1.10.4-intel-2017
#module load intel/18.0.1.163 openmpi/4.0.4_intel cmake anaconda2

#SCR_LIB_FLAGS="-lscrf -L${SCR_PATH}/scr/lib64 -lscr"
#SCR_INCLUDE_FLAGS="-I${SCR_PATH}/scr/include -I/usr/include -I."
rm -rf Silo_Diagnostics/*
rm *.so 2>/dev/null

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No color

# Remove existing vnv_* files
rm -rf vnv_*

export SCR_CONF_FILE=`pwd`/../CR/scr_conf.conf
export SCR_RUNS=4
if test "$1" = "cr"
then
	scr_mpirun -n 1 -mca btl self,sm,openib python ../Main/main.py
else
    #mpirun -n 1 -mca btl self,sm,openib ../exec/main
    #mpirun -n 1 -mca btl self,sm,openib ../exec/main
    #mpirun -n 8 ../exec/main
    if [[ "$1" == "GPU" ]]; then
       echo "Running on GPU"
       export OMP_TARGET_OFFLOAD=MANDATORY
       export OMP_NUM_THREADS=32
       #nsys profile --stats=true mpirun -n 1 --map-by ppr:1:node:pe=32 ../exec/main
       mpirun -n 1 --map-by ppr:1:node:pe=32 ../exec/main

    elif [[ "$1" == "CPU" ]]; then
    echo "Running on CPU with $2 threads"
       export OMP_TARGET_OFFLOAD=DISABLED
       export OMP_NUM_THREADS=$2
       mpirun -n 1 --map-by ppr:1:node:pe=$2 ../exec/main
elif [[ "$1" == "SERIAL" ]]; then
       echo "Running in SERIAL mode"
       export OMP_TARGET_OFFLOAD=DISABLED
       export OMP_NUM_THREADS=1
       mpirun -n 1 --map-by ppr:1:node:pe=1 ../exec/main
elif [[ "$1" == "MPI" ]]; then
       echo "Running in MPI mode with $2 ranks"
       export OMP_TARGET_OFFLOAD=DISABLED
       export OMP_NUM_THREADS=1
       #mpirun -n $2 --mca pml ob1 --mca btl self,tcp ../exec/main
       mpirun -n $2 --mca pml ob1 --mca btl vader,self --mca btl_vader_single_copy_mechanism none ../exec/main

else
    echo "Invalid argument: $1"
    echo "Usage: $0 [GPU|CPU|SERIAL]"
    exit 1
fi
    #nsys profile --stats=true mpirun -n 1 --map-by ppr:1:node:pe=$num_threads ../exec/main
    #mpirun -n 1 --map-by ppr:1:node:pe=$num_threads ../exec/main
    #vtune -collect hotspots mpirun -n $1 ../exec/main

    # Find the latest vnv file
    latest_vnv=$(ls -t vnv_* 2>/dev/null | head -n 1)

    # Check if the latest vnv file exists
    if [ -z "$latest_vnv" ]; then
        echo "Error: No vnv file found."
        exit 1
    fi

    # Check if baseline_vnv exists
    if [ "$1" != "SERIAL" ]; then
	    if [ ! -f "baseline_vnv" ]; then
	        echo "Error: baseline_vnv file not found in the current directory."
	        exit 1
	    fi

    # Compare the latest vnv file with baseline_vnv
    ./smart_diff.sh baseline_vnv "$latest_vnv"
    fi
fi
