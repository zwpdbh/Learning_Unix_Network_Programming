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
include CMakeFiles/KNN_main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/KNN_main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/KNN_main.dir/flags.make

CMakeFiles/KNN_main.dir/csv_parser.cpp.o: CMakeFiles/KNN_main.dir/flags.make
CMakeFiles/KNN_main.dir/csv_parser.cpp.o: ../csv_parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/KNN_main.dir/csv_parser.cpp.o"
	/usr/local/Cellar/gcc/7.2.0/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/KNN_main.dir/csv_parser.cpp.o -c /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/csv_parser.cpp

CMakeFiles/KNN_main.dir/csv_parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KNN_main.dir/csv_parser.cpp.i"
	/usr/local/Cellar/gcc/7.2.0/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/csv_parser.cpp > CMakeFiles/KNN_main.dir/csv_parser.cpp.i

CMakeFiles/KNN_main.dir/csv_parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KNN_main.dir/csv_parser.cpp.s"
	/usr/local/Cellar/gcc/7.2.0/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/csv_parser.cpp -o CMakeFiles/KNN_main.dir/csv_parser.cpp.s

CMakeFiles/KNN_main.dir/csv_parser.cpp.o.requires:

.PHONY : CMakeFiles/KNN_main.dir/csv_parser.cpp.o.requires

CMakeFiles/KNN_main.dir/csv_parser.cpp.o.provides: CMakeFiles/KNN_main.dir/csv_parser.cpp.o.requires
	$(MAKE) -f CMakeFiles/KNN_main.dir/build.make CMakeFiles/KNN_main.dir/csv_parser.cpp.o.provides.build
.PHONY : CMakeFiles/KNN_main.dir/csv_parser.cpp.o.provides

CMakeFiles/KNN_main.dir/csv_parser.cpp.o.provides.build: CMakeFiles/KNN_main.dir/csv_parser.cpp.o


CMakeFiles/KNN_main.dir/main.cpp.o: CMakeFiles/KNN_main.dir/flags.make
CMakeFiles/KNN_main.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/KNN_main.dir/main.cpp.o"
	/usr/local/Cellar/gcc/7.2.0/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/KNN_main.dir/main.cpp.o -c /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/main.cpp

CMakeFiles/KNN_main.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KNN_main.dir/main.cpp.i"
	/usr/local/Cellar/gcc/7.2.0/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/main.cpp > CMakeFiles/KNN_main.dir/main.cpp.i

CMakeFiles/KNN_main.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KNN_main.dir/main.cpp.s"
	/usr/local/Cellar/gcc/7.2.0/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/main.cpp -o CMakeFiles/KNN_main.dir/main.cpp.s

CMakeFiles/KNN_main.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/KNN_main.dir/main.cpp.o.requires

CMakeFiles/KNN_main.dir/main.cpp.o.provides: CMakeFiles/KNN_main.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/KNN_main.dir/build.make CMakeFiles/KNN_main.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/KNN_main.dir/main.cpp.o.provides

CMakeFiles/KNN_main.dir/main.cpp.o.provides.build: CMakeFiles/KNN_main.dir/main.cpp.o


CMakeFiles/KNN_main.dir/rbc_index.cpp.o: CMakeFiles/KNN_main.dir/flags.make
CMakeFiles/KNN_main.dir/rbc_index.cpp.o: ../rbc_index.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/KNN_main.dir/rbc_index.cpp.o"
	/usr/local/Cellar/gcc/7.2.0/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/KNN_main.dir/rbc_index.cpp.o -c /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/rbc_index.cpp

CMakeFiles/KNN_main.dir/rbc_index.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KNN_main.dir/rbc_index.cpp.i"
	/usr/local/Cellar/gcc/7.2.0/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/rbc_index.cpp > CMakeFiles/KNN_main.dir/rbc_index.cpp.i

CMakeFiles/KNN_main.dir/rbc_index.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KNN_main.dir/rbc_index.cpp.s"
	/usr/local/Cellar/gcc/7.2.0/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/rbc_index.cpp -o CMakeFiles/KNN_main.dir/rbc_index.cpp.s

CMakeFiles/KNN_main.dir/rbc_index.cpp.o.requires:

.PHONY : CMakeFiles/KNN_main.dir/rbc_index.cpp.o.requires

CMakeFiles/KNN_main.dir/rbc_index.cpp.o.provides: CMakeFiles/KNN_main.dir/rbc_index.cpp.o.requires
	$(MAKE) -f CMakeFiles/KNN_main.dir/build.make CMakeFiles/KNN_main.dir/rbc_index.cpp.o.provides.build
.PHONY : CMakeFiles/KNN_main.dir/rbc_index.cpp.o.provides

CMakeFiles/KNN_main.dir/rbc_index.cpp.o.provides.build: CMakeFiles/KNN_main.dir/rbc_index.cpp.o


CMakeFiles/KNN_main.dir/sdc_index.cpp.o: CMakeFiles/KNN_main.dir/flags.make
CMakeFiles/KNN_main.dir/sdc_index.cpp.o: ../sdc_index.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/KNN_main.dir/sdc_index.cpp.o"
	/usr/local/Cellar/gcc/7.2.0/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/KNN_main.dir/sdc_index.cpp.o -c /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/sdc_index.cpp

CMakeFiles/KNN_main.dir/sdc_index.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KNN_main.dir/sdc_index.cpp.i"
	/usr/local/Cellar/gcc/7.2.0/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/sdc_index.cpp > CMakeFiles/KNN_main.dir/sdc_index.cpp.i

CMakeFiles/KNN_main.dir/sdc_index.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KNN_main.dir/sdc_index.cpp.s"
	/usr/local/Cellar/gcc/7.2.0/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/sdc_index.cpp -o CMakeFiles/KNN_main.dir/sdc_index.cpp.s

CMakeFiles/KNN_main.dir/sdc_index.cpp.o.requires:

.PHONY : CMakeFiles/KNN_main.dir/sdc_index.cpp.o.requires

CMakeFiles/KNN_main.dir/sdc_index.cpp.o.provides: CMakeFiles/KNN_main.dir/sdc_index.cpp.o.requires
	$(MAKE) -f CMakeFiles/KNN_main.dir/build.make CMakeFiles/KNN_main.dir/sdc_index.cpp.o.provides.build
.PHONY : CMakeFiles/KNN_main.dir/sdc_index.cpp.o.provides

CMakeFiles/KNN_main.dir/sdc_index.cpp.o.provides.build: CMakeFiles/KNN_main.dir/sdc_index.cpp.o


# Object files for target KNN_main
KNN_main_OBJECTS = \
"CMakeFiles/KNN_main.dir/csv_parser.cpp.o" \
"CMakeFiles/KNN_main.dir/main.cpp.o" \
"CMakeFiles/KNN_main.dir/rbc_index.cpp.o" \
"CMakeFiles/KNN_main.dir/sdc_index.cpp.o"

# External object files for target KNN_main
KNN_main_EXTERNAL_OBJECTS =

../bin/KNN_main: CMakeFiles/KNN_main.dir/csv_parser.cpp.o
../bin/KNN_main: CMakeFiles/KNN_main.dir/main.cpp.o
../bin/KNN_main: CMakeFiles/KNN_main.dir/rbc_index.cpp.o
../bin/KNN_main: CMakeFiles/KNN_main.dir/sdc_index.cpp.o
../bin/KNN_main: CMakeFiles/KNN_main.dir/build.make
../bin/KNN_main: CMakeFiles/KNN_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../bin/KNN_main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/KNN_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/KNN_main.dir/build: ../bin/KNN_main

.PHONY : CMakeFiles/KNN_main.dir/build

CMakeFiles/KNN_main.dir/requires: CMakeFiles/KNN_main.dir/csv_parser.cpp.o.requires
CMakeFiles/KNN_main.dir/requires: CMakeFiles/KNN_main.dir/main.cpp.o.requires
CMakeFiles/KNN_main.dir/requires: CMakeFiles/KNN_main.dir/rbc_index.cpp.o.requires
CMakeFiles/KNN_main.dir/requires: CMakeFiles/KNN_main.dir/sdc_index.cpp.o.requires

.PHONY : CMakeFiles/KNN_main.dir/requires

CMakeFiles/KNN_main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/KNN_main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/KNN_main.dir/clean

CMakeFiles/KNN_main.dir/depend:
	cd /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/build /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/build /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/K-NN/build/CMakeFiles/KNN_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/KNN_main.dir/depend

