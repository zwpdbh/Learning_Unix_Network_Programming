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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.9.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.9.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/build

# Include any dependencies generated for this target.
include CMakeFiles/main_mytest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/main_mytest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main_mytest.dir/flags.make

CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o: CMakeFiles/main_mytest.dir/flags.make
CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o: ../main_mytest_flann.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o"
	/usr/local/Cellar/gcc/7.2.0/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o -c /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/main_mytest_flann.cpp

CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.i"
	/usr/local/Cellar/gcc/7.2.0/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/main_mytest_flann.cpp > CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.i

CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.s"
	/usr/local/Cellar/gcc/7.2.0/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/main_mytest_flann.cpp -o CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.s

CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o.requires:

.PHONY : CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o.requires

CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o.provides: CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o.requires
	$(MAKE) -f CMakeFiles/main_mytest.dir/build.make CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o.provides.build
.PHONY : CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o.provides

CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o.provides.build: CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o


# Object files for target main_mytest
main_mytest_OBJECTS = \
"CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o"

# External object files for target main_mytest
main_mytest_EXTERNAL_OBJECTS =

../bin/main_mytest: CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o
../bin/main_mytest: CMakeFiles/main_mytest.dir/build.make
../bin/main_mytest: CMakeFiles/main_mytest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/main_mytest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main_mytest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main_mytest.dir/build: ../bin/main_mytest

.PHONY : CMakeFiles/main_mytest.dir/build

CMakeFiles/main_mytest.dir/requires: CMakeFiles/main_mytest.dir/main_mytest_flann.cpp.o.requires

.PHONY : CMakeFiles/main_mytest.dir/requires

CMakeFiles/main_mytest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main_mytest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main_mytest.dir/clean

CMakeFiles/main_mytest.dir/depend:
	cd /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/build /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/build /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/build/CMakeFiles/main_mytest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main_mytest.dir/depend
