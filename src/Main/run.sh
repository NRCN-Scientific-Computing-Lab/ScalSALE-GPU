#! /bin/bash
# ??? Add the site-specific environment/module commands required for this run.
rm core*
rm *.so
f2py -c -I../../build/modules -m datafile_fortran ../../build/General/CMakeFiles/General.dir/*.o ../../build/Mesh/CMakeFiles/Mesh.dir/*.o ../../build/Main/CMakeFiles/Main.dir/*.o ../../build/Time_step/CMakeFiles/Time_step.dir/*.o ../../build/Quantities/Cell/CMakeFiles/Q_Cell.dir/*.o ../../build/Quantities/Vertex/CMakeFiles/Q_Vertex.dir/*.o ../../build/Quantities/CMakeFiles/Quantities.dir/*.o ../../build/Material/Equation_of_state/CMakeFiles/EOS.dir/*.o ../../build/Material/CMakeFiles/Material.dir/*.o ../../build/Boundary_conditions/Cell/CMakeFiles/BC_Cell.dir/*.o ../../build/Boundary_conditions/Vertex/CMakeFiles/BC_Vertex.dir/*.o ../../build/archive/lib*
python ../Main/main.py
