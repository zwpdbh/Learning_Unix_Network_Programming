# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "/Users/zw/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/173.4127.32/CLion.app/Contents/bin/cmake/bin/cmake"

# The command to remove a file.
RM = "/Users/zw/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/173.4127.32/CLion.app/Contents/bin/cmake/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug

# Include any dependencies generated for this target.
include K-NN/CMakeFiles/main_mytest.dir/depend.make

# Include the progress variables for this target.
include K-NN/CMakeFiles/main_mytest.dir/progress.make

# Include the compile flags for this target's objects.
include K-NN/CMakeFiles/main_mytest.dir/flags.make

K-NN/CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o: K-NN/CMakeFiles/main_mytest.dir/flags.make
K-NN/CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o: ../K-NN/main_mytest_flann.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object K-NN/CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o"
	cd /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/K-NN && /usr/local/Cellar/gcc/7.2.0/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o -c /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/main_mytest_flann.cpp

K-NN/CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.i"
	cd /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/K-NN && /usr/local/Cellar/gcc/7.2.0/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/main_mytest_flann.cpp > CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.i

K-NN/CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.s"
	cd /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/K-NN && /usr/local/Cellar/gcc/7.2.0/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/main_mytest_flann.cpp -o CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.s

K-NN/CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o.requires:

.PHONY : K-NN/CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o.requires

K-NN/CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o.provides: K-NN/CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o.requires
	$(MAKE) -f K-NN/CMakeFiles/main_mytest.dir/build.make K-NN/CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o.provides.build
.PHONY : K-NN/CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o.provides

K-NN/CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o.provides.build: K-NN/CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o


# Object files for target main_mytest
main_mytest_OBJECTS = \
"CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o"

# External object files for target main_mytest
main_mytest_EXTERNAL_OBJECTS =

../bin/main_mytest: K-NN/CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o
../bin/main_mytest: K-NN/CMakeFiles/main_mytest.dir/build.make
../bin/main_mytest: K-NN/CMakeFiles/main_mytest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/main_mytest"
	cd /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/K-NN && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main_mytest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
K-NN/CMakeFiles/main_mytest.dir/build: ../bin/main_mytest

.PHONY : K-NN/CMakeFiles/main_mytest.dir/build

K-NN/CMakeFiles/main_mytest.dir/requires: K-NN/CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o.requires

.PHONY : K-NN/CMakeFiles/main_mytest.dir/requires

K-NN/CMakeFiles/main_mytest.dir/clean:
	cd /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/K-NN && $(CMAKE_COMMAND) -P CMakeFiles/main_mytest.dir/cmake_clean.cmake
.PHONY : K-NN/CMakeFiles/main_mytest.dir/clean

K-NN/CMakeFiles/main_mytest.dir/depend:
	cd /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/K-NN /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/K-NN/CMakeFiles/main_mytest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : K-NN/CMakeFiles/main_mytest.dir/depend
