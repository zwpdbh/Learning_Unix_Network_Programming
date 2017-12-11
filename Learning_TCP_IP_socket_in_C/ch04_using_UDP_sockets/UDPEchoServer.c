//
// Created by zwpdbh on 02/12/2017.
//

#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <stdio.h>

#include "../lib/Practical.h"

int main(int argc, char* argv[]) {
    if (argc != 2) {
        DieWithUserMessage("Parameters", "<Server Port/Service>");
    }

    char *service = argv[1];

    // construct the server address structure
    struct addrinfo addrCriteria;
    memset(&addrCriteria, 0, sizeof(addrCriteria));
    addrCriteria.ai_family = AF_UNSPEC;
    addrCriteria.ai_flags = AI_PASSIVE;
    addrCriteria.ai_socktype = SOCK_DGRAM;
    addrCriteria.ai_protocol = IPPROTO_UDP;

    struct addrinfo* servAddr;
    int rtnVal = getaddrinfo(NULL, service, &addrCriteria, &servAddr);
    if (rtnVal != 0) {
        DieWithUserMessage("getaddrinfo() failed", gai_strerror(rtnVal));
    }

    // create socket for incoming connections
    int sock = socket(servAddr->ai_family, servAddr->ai_socktype, servAddr->ai_protocol);
    if (sock < 0)
        DieWithSystemMessage("socket() failed");

    // bind to the local address
    if (bind(sock, servAddr->ai_addr, servAddr->ai_addrlen) < 0) {
        DieWithSystemMessage("bind() failed");
    }

    // free address list allocated by getaddrinfo()
    freeaddrinfo(servAddr);

    for(;;) {
        struct sockaddr_storage clntAddr;
        // set length of client address structure
        socklen_t  clntAddrLen = sizeof(clntAddr);

        // block until receive message from a client
        char buffer[MAXSTRINGLENGTH];  // I/O buffer
        // Size of received message
        ssize_t numBytesRcvd = recvfrom(sock, buffer, MAXSTRINGLENGTH, 0, (struct sockaddr*) &clntAddr, &clntAddrLen);
        if (numBytesRcvd < 0) {
            DieWithSystemMessage("recvfrom() failed");
        }

        fputs("Handling client ", stdout);
        PrintSocketAddress((struct sockaddr*) &clntAddr, stdout);
        fputc('\n', stdout);

        // send received datagram back to the client
        ssize_t numBytesSent = sendto(sock, buffer, numBytesRcvd, 0, (struct sockaddr*) &clntAddr, sizeof(clntAddr));
        if (numBytesSent < 0) {
            DieWithSystemMessage("sendto() failed");
        } else if (numBytesSent != numBytesRcvd) {
            DieWithUserMessage("sendto()", "sent unexpected number of bytes");
        }
    }
}