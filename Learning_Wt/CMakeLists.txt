# set minimum version
cmake_minimum_required(VERSION 3.9)

# set project name
project(Wt_web_development)

set(CMAKE_C_COMPILER /usr/bin/gcc)
set(CMAKE_CXX_COMPILER /usr/bin/g++)
set (CMAKE_CXX_STANDARD 14)


# set the output folder where your program will be created
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH  ${CMAKE_BINARY_DIR})
# CMAKE_SOURCE_DIR is where cmake was started, the top level source directory
# CMAKE_BINARY_DIR is the same as CMAKE_SOURCE_DIR, otherwise this is the top level directory of your build tree

include_directories("${PROJECT_SOURCE_DIR}")
# contains the full path to the root of your project source directory (for example, to the nearest directory where
# CMakeLists.txt contains the PROJECT() command)


SET(GCC_HEADER_PATH "-I/usr/local/include")
SET(GCC_SHARED_LIB_PATH "-L/usr/local/lib")
SET(GCC_LINK_FLAGS "-lwthttp -lwt")

SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} ${GCC_HEADER_PATH} ${GCC_SHARED_LIB_PATH} ${GCC_LINK_FLAGS}")


add_executable(
        wt_demo_01
        01/wt_demo_01_main.cpp 01/DemoApplication.cpp 01/DemoApplication.h 01/DemoDialog.cpp 01/DemoDialog.h)


