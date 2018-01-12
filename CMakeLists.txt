cmake_minimum_required(VERSION 3.8)
project(Learning_Unix_Network_Programming)

set(CMAKE_C_STANDARD 99)


# === for Learning_TCP_IP_socket_in_C
add_subdirectory(./Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets)
add_subdirectory(./Learning_TCP_IP_socket_in_C/ch03_names_and_address_families)
#add_subdirectory(./Learning_TCP_IP_socket_in_C/ch04_using_UDP_sockets)
add_subdirectory(./Learning_TCP_IP_socket_in_C/ch05_sending_and_receiving_data)
add_subdirectory(./Learning_TCP_IP_socket_in_C/my_tools)

# === for my practise for Learning_TCP_IP_socket_in_C
add_subdirectory(./Learning_TCP_IP_socket_in_C/ch02_my_trial)


# === for Wt web
add_subdirectory(./Learning_Wt)

# === for Concurrent_programming
add_subdirectory(./Concurrent_programming/01_threads_management)

# === for Parallel implementation of KNN
add_subdirectory(K-NN)


# === for OpenMP
add_subdirectory(./Concurrent_programming/Learning_OpenMP)