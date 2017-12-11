cmake_minimum_required(VERSION 3.9)

project(TCP_IP_sockets_in_C_ch03)

set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH  ${CMAKE_BINARY_DIR})

include_directories("${PROJECT_SOURCE_DIR}")

add_executable(
        tcp_echo_server
        TCPEchoServer.c
        ../lib/Practical.c
        ../lib/TCPServerUtility.c
        ../lib/AddressUtility.c
)

add_executable(
        tcp_echo_client
        TCPEchoClient.c
        ../lib/Practical.c
        ../lib/TCPClientUtility.c
        ../lib/AddressUtility.c
)