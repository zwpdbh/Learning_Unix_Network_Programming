cmake_minimum_required(VERSION 3.8)
project(Learning_Unix_Network_Programming)

set(CMAKE_C_STANDARD 99)

# === for UNIX Network Programming
add_executable(
        Learning_Unix_network_programming_daytime
        daytime/daytime_client.c lib/unp.h Learning_Unix_network_programming/config.h lib/unp.c)


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
        Learning_TCP_IP_socket_in_C/lib/AddressUtility.c Learning_TCP_IP_socket_in_C/lib/TCPClientUtility.c Learning_TCP_IP_socket_in_C/ch03_names_and_address_families/TCPEchoClient.c Learning_TCP_IP_socket_in_C/lib/TCPServerUtility.c Learning_TCP_IP_socket_in_C/ch03_names_and_address_families/TCPEchoServer.c)

add_executable(
        Learning_TCP_IP_socket_in_C_04_using_UDP_sockets
        Learning_TCP_IP_socket_in_C/ch04_using_UDP_sockets/UDPEchoClient.cpp Learning_TCP_IP_socket_in_C/ch04_using_UDP_sockets/UDPEchoServer.c)

add_executable(
        Learning_TCP_IP_socket_in_C_05_sending_and_receiving_data
        Learning_TCP_IP_socket_in_C/ch05_sending_and_receiving_data/TestSizes.c
        Learning_TCP_IP_socket_in_C/ch05_sending_and_receiving_data/BruteForceCoding.c
        Learning_TCP_IP_socket_in_C/ch05_sending_and_receiving_data/VoteProtocol.h
        Learning_TCP_IP_socket_in_C/ch05_sending_and_receiving_data/Framer.h Learning_TCP_IP_socket_in_C/ch05_sending_and_receiving_data/VoteEncoding.h Learning_TCP_IP_socket_in_C/ch05_sending_and_receiving_data/VoteClientTCP.c Learning_TCP_IP_socket_in_C/ch05_sending_and_receiving_data/VoteServerTCP.c Learning_TCP_IP_socket_in_C/ch05_sending_and_receiving_data/DelimFramer.c Learning_TCP_IP_socket_in_C/ch05_sending_and_receiving_data/LengthFramer.c Learning_TCP_IP_socket_in_C/ch05_sending_and_receiving_data/VoteEncodingText.c Learning_TCP_IP_socket_in_C/ch05_sending_and_receiving_data/VoteEncodingBin.c)


# === for learning concurrent programming in C++
add_executable(
        Learning_C++_Concurrency
        Learning_C++_Concurrency/playground/main.cpp
)