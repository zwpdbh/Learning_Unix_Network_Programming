cmake_minimum_required(VERSION 3.8)
project(Learning_Unix_Network_Programming)

set(CMAKE_C_STANDARD 99)

add_executable(daytime_client daytime/daytime_client.c lib/unp.h config.h lib/unp.c)


# === for Learning_TCP_IP_socket_in_C
# chapter 02
add_executable(
        Learning_TCP_IP_socket_in_C_02_tcp_server
        Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoServer4.c
        Learning_TCP_IP_socket_in_C/lib/Practical.c
)

add_executable(
        Learning_TCP_IP_socket_in_C_02_tcp_client
        Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/TCPEchoClient4.c
        Learning_TCP_IP_socket_in_C/lib/Practical.c
)


add_executable(
        Learning_TCP_IP_socket_in_C_03_names_and_address_families
        Learning_TCP_IP_socket_in_C/ch03_names_and_address_families/GetAddrInfo.c
        Learning_TCP_IP_socket_in_C/lib/Practical.h
        Learning_TCP_IP_socket_in_C/lib/AddressUtility.c Learning_TCP_IP_socket_in_C/lib/TCPClientUtility.c Learning_TCP_IP_socket_in_C/ch03_names_and_address_families/TCPEchoClient.c)