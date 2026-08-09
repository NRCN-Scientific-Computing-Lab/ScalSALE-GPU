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
#	mpirun -n 1 -mca btl self,sm,openib ../exec/main
    #mpirun -n 1 -mca btl self,sm,openib ../exec/main
    #mpirun -n 8 ../exec/main
    mpirun -n $1 ../exec/main
    #vtune -collect hotspots mpirun -n $1 ../exec/main
fi
