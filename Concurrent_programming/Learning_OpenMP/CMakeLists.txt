# === this project will be used for practise the OpenMP programming
# set minimum version
cmake_minimum_required(VERSION 3.9)

# set project name
project(parallel_KNN)

set(CMAKE_C_COMPILER /usr/local/Cellar/gcc/7.2.0/bin/gcc-7)
set(CMAKE_CXX_COMPILER /usr/local/Cellar/gcc/7.2.0/bin/g++-7)

# set the output folder where your program will be created
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH  ${CMAKE_BINARY_DIR})
# CMAKE_SOURCE_DIR is where cmake was started, the top level source directory
# CMAKE_BINARY_DIR is the same as CMAKE_SOURCE_DIR, otherwise this is the top level directory of your build tree

include_directories("${PROJECT_SOURCE_DIR}")
# contains the full path to the root of your project source directory (for example, to the nearest directory where
# CMakeLists.txt contains the PROJECT() command)

include_directories("/usr/local/include/" "/usr/include")
link_directories("/usr/include" "/usr/lib")
# to enable to call openMP functions
link_libraries(gomp)
# to enable OpenMP directives
add_compile_options(-fopenmp)


# ===
add_executable(
        OpenMP_Hello_World
        main_01.cpp
)


