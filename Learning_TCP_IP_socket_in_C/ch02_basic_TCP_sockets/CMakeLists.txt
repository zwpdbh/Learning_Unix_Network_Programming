cmake_minimum_required(VERSION 3.9)

project(TCP_IP_sockets_in_C_ch03 C)

set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH  ${CMAKE_BINARY_DIR})

include_directories("${PROJECT_SOURCE_DIR}")

add_executable(
        tcp_echo_server
        TCPEchoServer4.c
        ../lib/Practical.c
        ../lib/TCPServerUtility.c
        ../lib/AddressUtility.c
)

add_executable(
        tcp_echo_client
        TCPEchoClient4.c
        ../lib/Practical.c
)