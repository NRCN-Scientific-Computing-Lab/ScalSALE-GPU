# Install script for directory: /home/reemh/ScalSALE-GPU/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/reemh/ScalSALE-GPU/build/Parallel/cmake_install.cmake")
  include("/home/reemh/ScalSALE-GPU/build/General/cmake_install.cmake")
  include("/home/reemh/ScalSALE-GPU/build/Input/cmake_install.cmake")
  include("/home/reemh/ScalSALE-GPU/build/Boundary_conditions/cmake_install.cmake")
  include("/home/reemh/ScalSALE-GPU/build/Quantities/cmake_install.cmake")
  include("/home/reemh/ScalSALE-GPU/build/Boundary_conditions/Vertex/cmake_install.cmake")
  include("/home/reemh/ScalSALE-GPU/build/Boundary_conditions/Cell/cmake_install.cmake")
  include("/home/reemh/ScalSALE-GPU/build/Quantities/Cell/cmake_install.cmake")
  include("/home/reemh/ScalSALE-GPU/build/Quantities/Vertex/cmake_install.cmake")
  include("/home/reemh/ScalSALE-GPU/build/Mesh/cmake_install.cmake")
  include("/home/reemh/ScalSALE-GPU/build/Material/Equation_of_state/cmake_install.cmake")
  include("/home/reemh/ScalSALE-GPU/build/Material/cmake_install.cmake")
  include("/home/reemh/ScalSALE-GPU/build/Rezone_and_Advect/cmake_install.cmake")
  include("/home/reemh/ScalSALE-GPU/build/Time_step/cmake_install.cmake")
  include("/home/reemh/ScalSALE-GPU/build/Diagnostics/cmake_install.cmake")
  include("/home/reemh/ScalSALE-GPU/build/Main/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
  file(WRITE "/home/reemh/ScalSALE-GPU/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
