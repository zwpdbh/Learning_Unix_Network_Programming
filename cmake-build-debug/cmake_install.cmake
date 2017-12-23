# Install script for directory: /Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Learning_TCP_IP_socket_in_C/ch02_basic_TCP_sockets/cmake_install.cmake")
  include("/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Learning_TCP_IP_socket_in_C/ch03_names_and_address_families/cmake_install.cmake")
  include("/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Learning_TCP_IP_socket_in_C/ch05_sending_and_receiving_data/cmake_install.cmake")
  include("/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Learning_TCP_IP_socket_in_C/my_tools/cmake_install.cmake")
  include("/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Learning_C++_Concurrency/playground/cmake_install.cmake")
  include("/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Learning_C++_Concurrency/demo/cmake_install.cmake")
  include("/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Parallel_Computing/learning_pthreads/01/cmake_install.cmake")
  include("/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Parallel_Computing/learning_pthreads/02/cmake_install.cmake")
  include("/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Parallel_Computing/learning_pthreads/03/cmake_install.cmake")
  include("/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/Learning_Wt/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/zw/code/C_and_C++_Projects/Learning_Unix_Network_Programming/cmake-build-debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
