//
// Created by zwpdbh on 16/11/2017.
//
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include "../lib/Practical.h"

static const int MAXPENDING = 5;

void HandleTCPClient(int);

int main(int argc, char* argv[]) {
    if (argc != 2) {
        DieWithUserMessage("Parameters", "<Server Port>");
    }

    in_port_t servPort = atoi(argv[1]);

    // create socket for incoming connections
    int servSock;
    if ((servSock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0) {
        DieWithSystemMessage("socket() failed");
    }

    // construct local address structure
    struct sockaddr_in servAddr;
    memset(&servAddr, 0, sizeof(servAddr));
    servAddr.sin_family = AF_INET;
    servAddr.sin_addr.s_addr = htonl(INADDR_ANY); // any incoming interface
    servAddr.sin_port = htons(servPort);

    // bind to the local address
    if (bind(servSock, (struct sockaddr*) &servAddr, sizeof(servAddr)) < 0) {
        DieWithSystemMessage("bind() failed");
    }

    // mark the socket so it will listen for incoming connections
    if (listen(servSock, MAXPENDING) < 0) {
        DieWithSystemMessage("listen() failed");
    }


    for (;;) {
        struct sockaddr_in clntAddr;
        // set length of client address structure (in-out parameter)
        socklen_t  clntAddrLen = sizeof(clntAddr);

        // wait for a client to connect
        int clntSock = accept(servSock, (struct sockaddr*) &clntAddr, &clntAddrLen);
        if (clntSock < 0) {
            DieWithSystemMessage("accept() failed");
        }

        // clnSock is connected to a client
        char clntName[INET_ADDRSTRLEN]; // string to contain client address
        if (inet_ntop(AF_INET, &clntAddr.sin_addr.s_addr, clntName, sizeof(clntName)) != NULL) {
            printf("Handling client %s/%d\n", clntName, ntohs(clntAddr.sin_port));
        } else {
            puts("Unable to get client address");
        }
        HandleTCPClient(clntSock);
    }
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
