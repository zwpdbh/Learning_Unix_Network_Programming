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
CMAKE_COMMAND = "/Users/zw/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/173.4301.33/CLion.app/Contents/bin/cmake/bin/cmake"

# The command to remove a file.
RM = "/Users/zw/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/173.4301.33/CLion.app/Contents/bin/cmake/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug

# Include any dependencies generated for this target.
include Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/depend.make

# Include the progress variables for this target.
include Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/progress.make

# Include the compile flags for this target's objects.
include Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/flags.make

Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/tcp_client.c.o: Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/flags.make
Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/tcp_client.c.o: ../Learning_TCP_IP_socket_in_C/ch02_my_trial/tcp_client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/tcp_client.c.o"
	cd /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Learning_TCP_IP_socket_in_C/ch02_my_trial && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tcp_client.dir/tcp_client.c.o   -c /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Learning_TCP_IP_socket_in_C/ch02_my_trial/tcp_client.c

Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/tcp_client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tcp_client.dir/tcp_client.c.i"
	cd /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Learning_TCP_IP_socket_in_C/ch02_my_trial && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Learning_TCP_IP_socket_in_C/ch02_my_trial/tcp_client.c > CMakeFiles/tcp_client.dir/tcp_client.c.i

Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/tcp_client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tcp_client.dir/tcp_client.c.s"
	cd /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Learning_TCP_IP_socket_in_C/ch02_my_trial && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Learning_TCP_IP_socket_in_C/ch02_my_trial/tcp_client.c -o CMakeFiles/tcp_client.dir/tcp_client.c.s

Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/tcp_client.c.o.requires:

.PHONY : Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/tcp_client.c.o.requires

Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/tcp_client.c.o.provides: Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/tcp_client.c.o.requires
	$(MAKE) -f Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/build.make Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/tcp_client.c.o.provides.build
.PHONY : Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/tcp_client.c.o.provides

Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/tcp_client.c.o.provides.build: Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/tcp_client.c.o


# Object files for target tcp_client
tcp_client_OBJECTS = \
"CMakeFiles/tcp_client.dir/tcp_client.c.o"

# External object files for target tcp_client
tcp_client_EXTERNAL_OBJECTS =

../bin/tcp_client: Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/tcp_client.c.o
../bin/tcp_client: Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/build.make
../bin/tcp_client: Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../../../bin/tcp_client"
	cd /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Learning_TCP_IP_socket_in_C/ch02_my_trial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcp_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/build: ../bin/tcp_client

.PHONY : Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/build

Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/requires: Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/tcp_client.c.o.requires

.PHONY : Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/requires

Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/clean:
	cd /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Learning_TCP_IP_socket_in_C/ch02_my_trial && $(CMAKE_COMMAND) -P CMakeFiles/tcp_client.dir/cmake_clean.cmake
.PHONY : Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/clean

Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/depend:
	cd /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/Learning_TCP_IP_socket_in_C/ch02_my_trial /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Learning_TCP_IP_socket_in_C/ch02_my_trial /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Learning_TCP_IP_socket_in_C/ch02_my_trial/CMakeFiles/tcp_client.dir/depend

