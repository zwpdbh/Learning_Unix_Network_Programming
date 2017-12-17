cmake_minimum_required(VERSION 3.8)
project(Learning_Unix_Network_Programming)

set(CMAKE_C_STANDARD 99)

# === for UNIX Network Programming
add_executable(
        Learning_Unix_network_programming_daytime
        daytime/daytime_client.c lib/unp.h Learning_Unix_network_programming/config.h lib/unp.c)


# === for Learning_TCP_IP_socket_in_C
add_subdirectory(./Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets)
add_subdirectory(./Learning_TCP_IP_socket_in_C/ch03_names_and_address_families)
#add_subdirectory(./Learning_TCP_IP_socket_in_C/ch04_using_UDP_sockets)
add_subdirectory(./Learning_TCP_IP_socket_in_C/ch05_sending_and_receiving_data)



# === for learning concurrent programming in C++
add_subdirectory(./Learning_C++_Concurrency/playground)



# === for parallel computing
add_subdirectory(./Parallel_Computing/learning_pthreads/01)
add_subdirectory(./Parallel_Computing/learning_pthreads/02)