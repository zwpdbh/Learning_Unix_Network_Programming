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
CMAKE_SOURCE_DIR = /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Parallel_Computing/learning_pthreads/01

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Parallel_Computing/learning_pthreads/01/build

# Include any dependencies generated for this target.
include CMakeFiles/simple_one.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simple_one.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simple_one.dir/flags.make

CMakeFiles/simple_one.dir/simple_one.cpp.o: CMakeFiles/simple_one.dir/flags.make
CMakeFiles/simple_one.dir/simple_one.cpp.o: ../simple_one.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Parallel_Computing/learning_pthreads/01/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simple_one.dir/simple_one.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_one.dir/simple_one.cpp.o -c /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Parallel_Computing/learning_pthreads/01/simple_one.cpp

CMakeFiles/simple_one.dir/simple_one.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_one.dir/simple_one.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Parallel_Computing/learning_pthreads/01/simple_one.cpp > CMakeFiles/simple_one.dir/simple_one.cpp.i

CMakeFiles/simple_one.dir/simple_one.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_one.dir/simple_one.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Parallel_Computing/learning_pthreads/01/simple_one.cpp -o CMakeFiles/simple_one.dir/simple_one.cpp.s

CMakeFiles/simple_one.dir/simple_one.cpp.o.requires:

.PHONY : CMakeFiles/simple_one.dir/simple_one.cpp.o.requires

CMakeFiles/simple_one.dir/simple_one.cpp.o.provides: CMakeFiles/simple_one.dir/simple_one.cpp.o.requires
	$(MAKE) -f CMakeFiles/simple_one.dir/build.make CMakeFiles/simple_one.dir/simple_one.cpp.o.provides.build
.PHONY : CMakeFiles/simple_one.dir/simple_one.cpp.o.provides

CMakeFiles/simple_one.dir/simple_one.cpp.o.provides.build: CMakeFiles/simple_one.dir/simple_one.cpp.o


# Object files for target simple_one
simple_one_OBJECTS = \
"CMakeFiles/simple_one.dir/simple_one.cpp.o"

# External object files for target simple_one
simple_one_EXTERNAL_OBJECTS =

../bin/simple_one: CMakeFiles/simple_one.dir/simple_one.cpp.o
../bin/simple_one: CMakeFiles/simple_one.dir/build.make
../bin/simple_one: CMakeFiles/simple_one.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Parallel_Computing/learning_pthreads/01/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/simple_one"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_one.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simple_one.dir/build: ../bin/simple_one

.PHONY : CMakeFiles/simple_one.dir/build

CMakeFiles/simple_one.dir/requires: CMakeFiles/simple_one.dir/simple_one.cpp.o.requires

.PHONY : CMakeFiles/simple_one.dir/requires

CMakeFiles/simple_one.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simple_one.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simple_one.dir/clean

CMakeFiles/simple_one.dir/depend:
	cd /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Parallel_Computing/learning_pthreads/01/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Parallel_Computing/learning_pthreads/01 /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Parallel_Computing/learning_pthreads/01 /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Parallel_Computing/learning_pthreads/01/build /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Parallel_Computing/learning_pthreads/01/build /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Parallel_Computing/learning_pthreads/01/build/CMakeFiles/simple_one.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simple_one.dir/depend
