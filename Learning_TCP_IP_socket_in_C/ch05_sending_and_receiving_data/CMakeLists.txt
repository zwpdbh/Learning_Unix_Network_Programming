# set minimum version
cmake_minimum_required(VERSION 3.9)

# set project name
project(TCP_IP_sockets_in_C_ch05)

# set the output folder where your program will be created
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH  ${CMAKE_BINARY_DIR})
# CMAKE_SOURCE_DIR is where cmake was started, the top level source directory
# CMAKE_BINARY_DIR is the same as CMAKE_SOURCE_DIR, otherwise this is the top level directory of your build tree


include_directories("${PROJECT_SOURCE_DIR}")
# contains the full path to the root of your project source directory (for example, to the nearest directory where
# CMakeLists.txt contains the PROJECT() command)


add_executable(
        vote_server_binary
        VoteServerTCP.c
#        LengthFramer.c
        DelimFramer.c
#        VoteEncodingBin.c
        VoteEncodingText.c
        ../lib/Practical.c
        ../lib/TCPServerUtility.c
        ../lib/AddressUtility.c
)

add_executable(
        vote_client_binary
        VoteClientTCP.c
#        LengthFramer.c
        DelimFramer.c
#        VoteEncodingBin.c
        VoteEncodingText.c
        ../lib/Practical.c
        ../lib/TCPClientUtility.c
)
