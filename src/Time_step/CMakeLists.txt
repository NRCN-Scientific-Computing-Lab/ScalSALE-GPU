include_directories($ENV{JSONFORTRAN})
link_directories($ENV{JSONFORTRAN}/lib)
#target_link_libraries(Rezone_and_Advect jsonfortran)

add_library(Time_step hydro_step.f90 time.f90)
target_link_libraries(Time_step jsonfortran)
