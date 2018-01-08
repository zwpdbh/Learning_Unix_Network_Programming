# set minimum version
cmake_minimum_required(VERSION 3.9)

# set project name
project(pthreads_creating_and_terminating)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_COMPILER /usr/bin/gcc)
set(CMAKE_CXX_COMPILER /usr/bin/g++)


# set the output folder where your program will be created
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH  ${CMAKE_BINARY_DIR})
# CMAKE_SOURCE_DIR is where cmake was started, the top level source directory
# CMAKE_BINARY_DIR is the same as CMAKE_SOURCE_DIR, otherwise this is the top level directory of your build tree

include_directories("${PROJECT_SOURCE_DIR}")
# contains the full path to the root of your project source directory (for example, to the nearest directory where
# CMakeLists.txt contains the PROJECT() command)


#SET(GCC_HEADER_PATH "-I/usr/include")
#SET(GCC_SHARED_LIB_PATH "-L/usr/lib")
#SET(GCC_LINK_FLAGS "-lpthread")
#SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} ${GCC_HEADER_PATH} ${GCC_SHARED_LIB_PATH} ${GCC_LINK_FLAGS}")

#SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} ${GCC_HEADER_PATH} ${GCC_SHARED_LIB_PATH})



add_executable(
        OpenMP_demo_01
        OpenMP_demo_01_main.c
        omp.h)


# === another way to set include and link directory
#include_directories(/opt/NVIDIA_GPU_Computing_SDK/OpenCL/common/inc)
#link_directories(/opt/NVIDIA_GPU_Computing_SDK/OpenCL/common/<lib or something similar>)
#
#add_executable(yourexe src1.c ...)
#target_link_libraries(yourexe OpenCL)
# ===