# this project illustrate the management of threads with PThread, C++ library


# set minimum version
cmake_minimum_required(VERSION 3.9)

# set project name
project(01_thread_management)

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


SET(GCC_HEADER_PATH "-I/usr/include")
SET(GCC_SHARED_LIB_PATH "-L/usr/lib")
SET(GCC_LINK_FLAGS "-lpthread")

SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} ${GCC_HEADER_PATH} ${GCC_SHARED_LIB_PATH} ${GCC_LINK_FLAGS}")


# illustrate the creation of threads using pthread
add_executable(
        pthread_creation
        pthread_creation_main.cpp
)

add_executable(
        pthread_fetch_exit_code_from_thread_termination
        pthread_fetch_exit_code_from_thread_termination.cpp
)

add_executable(
        pthread_cleanup_handler
        pthread_cleanup_handler.cpp
)

add_executable(
        cplus_creation
        cplus_creation_main.cpp
)

add_executable(
        cplus_waiting_in_eceptional_circumstances
        cplus_waiting_in_eceptional_circumstances.cpp
)

# === another way to set include and link directory
#include_directories(/opt/NVIDIA_GPU_Computing_SDK/OpenCL/common/inc)
#link_directories(/opt/NVIDIA_GPU_Computing_SDK/OpenCL/common/<lib or something similar>)
#
#add_executable(yourexe src1.c ...)
#target_link_libraries(yourexe OpenCL)
# ===