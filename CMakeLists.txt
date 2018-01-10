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

# === for PThread
add_subdirectory(./Parallel_Computing/learning_pthreads/01)
add_subdirectory(./Parallel_Computing/learning_pthreads/02)
add_subdirectory(./Parallel_Computing/learning_pthreads/03)

# === for Learning OpenMP
add_subdirectory(./Parallel_Computing/learning_OpenMP/01)

# === for Concurrent_programming
add_subdirectory(./Concurrent_programming/01_thread_management)
