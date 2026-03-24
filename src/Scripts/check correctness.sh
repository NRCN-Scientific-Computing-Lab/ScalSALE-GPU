#!/usr/bin/env bash


echo "Running OG"
echo "CPU:"
./make.sh && ./run.sh 1 cpu > outputs/og_cpu.txt
if diff -q track_validation_lagrangian gold_195 > /dev/null; then
    echo "No differences found."
else
    echo "Differences found!"
fi

echo "GPU:"
./make.sh && ./run.sh 1 gpu > outputs/og_gpu.txt
if diff -q track_validation_lagrangian gold_195 > /dev/null; then
    echo "No differences found."
else
    echo "Differences found!"
fi


echo "Running yoni + improvements (nowait + no this offloading)"
git restore --source=f79451e9ed757f75f885e8151b20831fed266cd3 -- ../Time_step/hydro_step.f90
git restore --source=f79451e9ed757f75f885e8151b20831fed266cd3 -- ../Time_step/hydro_step.f90
git restore --source=f79451e9ed757f75f885e8151b20831fed266cd3 -- ../Time_step/hydro_step.f90
echo "CPU:"
./make.sh && ./run.sh 1 cpu > outputs/yoni_improved_cpu.txt
if diff -q track_validation_lagrangian gold_195 > /dev/null; then
    echo "No differences found."
else
    echo "Differences found!"
fi

echo "GPU:"
./make.sh && ./run.sh 1 gpu > outputs/yoni_improved_gpu.txt
if diff -q track_validation_lagrangian gold_195 > /dev/null; then
    echo "No differences found."
else
    echo "Differences found!"
fi


echo "Running gpu finding min, gpu finding where it was found, using critical section FUSED"
git restore --source=deed8353a5fd9ff7fceb8bc581ec673ead2aa1ad -- ../Time_step/hydro_step.f90
git restore --source=deed8353a5fd9ff7fceb8bc581ec673ead2aa1ad -- ../Time_step/hydro_step.f90
git restore --source=deed8353a5fd9ff7fceb8bc581ec673ead2aa1ad -- ../Time_step/hydro_step.f90
echo "CPU:"
./make.sh && ./run.sh 1 cpu > outputs/shahar_cpu.txt
if diff -q track_validation_lagrangian gold_195 > /dev/null; then
    echo "No differences found."
else
    echo "Differences found!"
fi
    
echo "GPU:"
./make.sh && ./run.sh 1 gpu > outputs/shahar_gpu.txt
if diff -q track_validation_lagrangian gold_195 > /dev/null; then
    echo "No differences found."
else
    echo "Differences found!"
fi

