//
// Created by zwpdbh on 02/12/2017.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netdb.h>
#include "../lib/Practical.h"

int main(int argc, char* argv[]) {
    if (argc < 3 || argc > 4) {
        DieWithUserMessage("Parameters", "<Server Address/Name> <Echo Word> [<Server Port/Service>]");
    }

    char* server = argv[1];
    char* echoString = argv[2];

    size_t echoStringLen = strlen(echoString);
    if (echoStringLen > MAXSTRINGLENGTH) {
        DieWithUserMessage(echoString, "string too long");
    }

    const char* servPort = (argc == 4) ? argv[3] : "echo";

    struct addrinfo addrCriteria;
    memset(&addrCriteria, 0, sizeof(addrCriteria));
    addrCriteria.ai_family = AF_UNSPEC;
    // a zero value means don't care
    addrCriteria.ai_socktype = SOCK_DGRAM;
    addrCriteria.ai_protocol = IPPROTO_UDP;

    // get address
    struct addrinfo* servAddr;
    int rtnVal = getaddrinfo(server, servPort, &addrCriteria, &servAddr);
    if (rtnVal != 0) {
        DieWithUserMessage("getaddrinfo() failed", gai_strerror(rtnVal));
    }

    // create a datagram/UDP socket
    int sock = socket(servAddr->ai_family, servAddr->ai_socktype, servAddr->ai_protocol);
    if (sock < 0) {
        DieWithSystemMessage("socket() failed");
    }

    // send the string to the server
    ssize_t numBytes = sendto(sock, echoString, echoStringLen, 0, servAddr->ai_addr, servAddr->ai_addrlen);
    if (numBytes < 0) {
        DieWithSystemMessage("sendto() failed");
    } else if (numBytes != echoStringLen) {
        DieWithUserMessage("sendto() error", "sent unexpected number of bytes");
    }

    // receive a response
    struct sockaddr_storage fromAddr;
    // set length of from address structure
    socklen_t  fromAddrLen = sizeof(fromAddr);
    char buffer[MAXSTRINGLENGTH + 1];
    numBytes = recvfrom(sock, buffer, MAXSTRINGLENGTH, 0, (struct sockaddr*) &fromAddr, &fromAddrLen);
    if (numBytes < 0) {
        DieWithUserMessage("recvfrom() error", "received unexpected number of bytes");
    }

    // verify reception from expected source
    if (!SockAddrsEqual(servAddr->ai_addr, (struct sockaddr*) &fromAddr)) {
        DieWithUserMessage("recvfrom()", "received a packet from unknown source");
    }

    freeaddrinfo(servAddr);
    buffer[echoStringLen] = '\0';
    printf("received: %s\n", buffer);

    close(sock);
    exit(0);
}