# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = "/Users/zw/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/172.4343.16/CLion.app/Contents/bin/cmake/bin/cmake"

# The command to remove a file.
RM = "/Users/zw/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/172.4343.16/CLion.app/Contents/bin/cmake/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zw/code/C_Projects/Learning_Unix_Network_Programming

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zw/code/C_Projects/Learning_Unix_Network_Programming/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/flags.make

CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.o: CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/flags.make
CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.o: ../Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_Projects/Learning_Unix_Network_Programming/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.o   -c /Users/zw/code/C_Projects/Learning_Unix_Network_Programming/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c

CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zw/code/C_Projects/Learning_Unix_Network_Programming/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c > CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.i

CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zw/code/C_Projects/Learning_Unix_Network_Programming/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c -o CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.s

CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.o.requires:

.PHONY : CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.o.requires

CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.o.provides: CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.o.requires
	$(MAKE) -f CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/build.make CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.o.provides.build
.PHONY : CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.o.provides

CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.o.provides.build: CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.o


CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.o: CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/flags.make
CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.o: ../Learning_TCP_IP_socket_in_C/lib/Practical.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_Projects/Learning_Unix_Network_Programming/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.o   -c /Users/zw/code/C_Projects/Learning_Unix_Network_Programming/Learning_TCP_IP_socket_in_C/lib/Practical.c

CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zw/code/C_Projects/Learning_Unix_Network_Programming/Learning_TCP_IP_socket_in_C/lib/Practical.c > CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.i

CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zw/code/C_Projects/Learning_Unix_Network_Programming/Learning_TCP_IP_socket_in_C/lib/Practical.c -o CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.s

CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.o.requires:

.PHONY : CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.o.requires

CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.o.provides: CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.o.requires
	$(MAKE) -f CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/build.make CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.o.provides.build
.PHONY : CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.o.provides

CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.o.provides.build: CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.o


# Object files for target Learning_TCP_IP_socket_in_C_02_tcp_client
Learning_TCP_IP_socket_in_C_02_tcp_client_OBJECTS = \
"CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.o" \
"CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.o"

# External object files for target Learning_TCP_IP_socket_in_C_02_tcp_client
Learning_TCP_IP_socket_in_C_02_tcp_client_EXTERNAL_OBJECTS =

Learning_TCP_IP_socket_in_C_02_tcp_client: CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.o
Learning_TCP_IP_socket_in_C_02_tcp_client: CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.o
Learning_TCP_IP_socket_in_C_02_tcp_client: CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/build.make
Learning_TCP_IP_socket_in_C_02_tcp_client: CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zw/code/C_Projects/Learning_Unix_Network_Programming/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable Learning_TCP_IP_socket_in_C_02_tcp_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/build: Learning_TCP_IP_socket_in_C_02_tcp_client

.PHONY : CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/build

CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/requires: CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c.o.requires
CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/requires: CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/Learning_TCP_IP_socket_in_C/lib/Practical.c.o.requires

.PHONY : CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/requires

CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/clean

CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/depend:
	cd /Users/zw/code/C_Projects/Learning_Unix_Network_Programming/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zw/code/C_Projects/Learning_Unix_Network_Programming /Users/zw/code/C_Projects/Learning_Unix_Network_Programming /Users/zw/code/C_Projects/Learning_Unix_Network_Programming/cmake-build-debug /Users/zw/code/C_Projects/Learning_Unix_Network_Programming/cmake-build-debug /Users/zw/code/C_Projects/Learning_Unix_Network_Programming/cmake-build-debug/CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Learning_TCP_IP_socket_in_C_02_tcp_client.dir/depend

