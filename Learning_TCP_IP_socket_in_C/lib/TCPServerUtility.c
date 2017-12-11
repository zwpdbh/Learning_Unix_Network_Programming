//
// Created by zwpdbh on 01/12/2017.
//

#include <netdb.h>
#include <memory.h>
#include <stdio.h>
#include <unistd.h>
#include "Practical.h"

static const int MAXPENDING = 5;

int SetupTCPServerSocket(const char *service) {
    // construct the server address structure
    struct addrinfo addrCriteria;
    memset(&addrCriteria, 0, sizeof(addrCriteria));
    addrCriteria.ai_family = AF_UNSPEC;
    addrCriteria.ai_flags = AI_PASSIVE;
    addrCriteria.ai_socktype = SOCK_STREAM;
    addrCriteria.ai_protocol = IPPROTO_TCP;

    struct addrinfo* servAddr;
    int rtnVal = getaddrinfo(NULL, service, &addrCriteria, &servAddr);
    if (rtnVal != 0 ) {
        DieWithUserMessage("getaddrinfo() failed", gai_strerror(rtnVal));
    }

    int servSock = -1;
    for (struct addrinfo* addr = servAddr; addr != NULL; addr = addr->ai_next) {
        // create a tcp socket
        servSock = socket(servAddr->ai_family, servAddr->ai_socktype, servAddr->ai_protocol);
        if (servSock < 0) {
            continue;
        }

        // bind to the local address and set socket to list
        if ((bind(servSock, servAddr->ai_addr, servAddr->ai_addrlen)) == 0 && (listen(servSock, MAXPENDING)) == 0) {
            struct sockaddr_storage localAddr;
            socklen_t  addrSize = sizeof(localAddr);
            if (getsockname(servSock, (struct sockaddr*) &localAddr, &addrSize) < 0) {
                DieWithSystemMessage("getsockname() failed");
            }
            fputs("Binding to ", stdout);
            PrintSocketAddress((struct sockaddr*) &localAddr, stdout);
            fputc('\n', stdout);
            break;
        }

        close(servSock);
        servSock = -1;
    }

    // free address list allocated by getaddrinfo()
    freeaddrinfo(servAddr);

    return servSock;
}

/**accepting client connections*/
int AcceptTCPConnection(int servSock) {
    struct sockaddr_storage clntAddr;
    // set length of client address structure
    socklen_t clntAddrLen = sizeof(clntAddr);

    // wait for a client to connect
    int clntSock = accept(servSock, (struct sockaddr*) &clntAddr, &clntAddrLen);
    if (clntSock < 0) {
        DieWithSystemMessage("accept() failed");
    }

    // clntSock is connected to a client
    fputs("Handling client ", stdout);
    PrintSocketAddress((struct sockaddr*) &clntAddr, stdout);
    fputc('\n', stdout);

    return clntSock;
}


void HandleTCPClient(int clntSocket) {
    char buffer[BUFSIZ];

    // receive message from client
    ssize_t  numBytesRcvd = recv(clntSocket, buffer, BUFSIZ, 0);
    if (numBytesRcvd < 0) {
        DieWithSystemMessage("recv() failed");
    }

    // send received string and received agin until end of stream
    while (numBytesRcvd > 0) { // 0 indicates end of stream
        // echo message back to client
        ssize_t numBytesSent = send(clntSocket, buffer, numBytesRcvd, 0);
        if (numBytesSent < 0) {
            DieWithSystemMessage("Send() failed");
        } else if (numBytesSent != numBytesRcvd) {
            DieWithUserMessage("send()", "send unexpected number of bytes");
        }

        // see if there is more data to receive
        numBytesRcvd = recv(clntSocket, buffer, BUFSIZ, 0);
        if (numBytesRcvd < 0) {
            DieWithSystemMessage("recv() failed");
        }
    }

    close(clntSocket);
}
