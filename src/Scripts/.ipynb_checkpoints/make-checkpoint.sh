#! /bin/bash
# ??? Add the site-specific environment/module commands required for this build.

cd ../../build
#FC=mpiifort #cmake ../src/
#cmake ../src/
#if test "$1" = "GNU"
#then
#  echo "@@@@ GNU @@@@"
#  FC=mpifort cmake ../src/
#else
#  echo "@@@@ INTEL @@@@"
#  FC=mpiifort cmake ../src
#fi
make
cd ../src/Scripts
