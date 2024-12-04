include_directories($ENV{SILO_PATH}/include)
#include_directories($ENV{HDF5_PATH}/include)
link_directories($ENV{SILO_PATH}/lib)
#link_directories($ENV{HDF5_PATH}/lib)
include_directories($ENV{JSONFORTRAN})
link_directories($ENV{JSONFORTRAN}/lib)

##add_library(Time_step hydro_step.f90 time.f90)
#target_link_libraries(Time_step jsonfortran)


add_library(Diagnostics SHARED textual_diagnostic.f90 )#silo_diagnostic.f90 )#textual_diagnostic_hdf5.f90 silo_diagnostic.f90 plot_diagnostic.f90)
target_link_libraries(Diagnostics jsonfortran)
#target_link_libraries(Diagnostics hdf5 )

#diagnostics_group.f90 plot.f90 radius_1d.f90 shock_location.f90)
