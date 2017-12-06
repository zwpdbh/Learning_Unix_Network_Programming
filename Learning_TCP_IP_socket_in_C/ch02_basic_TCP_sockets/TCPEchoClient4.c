#include <stdio.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <memory.h>
#include <arpa/inet.h>
#include <unistd.h>

#include "../lib/Practical.h"

int main(int argc, char *argv[]) {

    if (argc < 3 || argc > 4) {
       // to do
        DieWithUserMessage("Parameters", "<Server Address> <Echo Word> [<Server Port>]");
    }

    char* servIP = argv[1];
    char* echoString = argv[2];


    in_port_t servPort = (argc == 4) ? atoi(argv[3]) : 7;

    // TCP socket creation
    int sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (sock < 0) {
        DieWithSystemMessage("socket() failed");
    }

    // set the server address structure
    struct sockaddr_in servAddr;
    memset(&servAddr, 0, sizeof(servAddr));
    servAddr.sin_family = AF_INET;

    // convert address
    int rtnVal = inet_pton(AF_INET, servIP, &servAddr.sin_addr.s_addr);
    if (rtnVal == 0) {
        DieWithUserMessage("inet_pton() failed", "invalid address string");
    } else if (rtnVal < 0) {
        DieWithSystemMessage("inet_pton() failed");
    }
    servAddr.sin_port = htons(servPort);

    // establish the connection to the echo server
    if (connect(sock, (struct sockaddr*) &servAddr, sizeof(servAddr)) < 0) {
        DieWithSystemMessage("connect() failed");
    }

    size_t  echoStringLen = strlen(echoString);

    // set the string to the server
    ssize_t  numbBytes = send(sock, echoString, echoStringLen, 0);
    if (numbBytes < 0) {
        DieWithUserMessage("recv()", "connection closed prematurely");
    } else if (numbBytes != echoStringLen) {
        DieWithUserMessage("send()", "sent unexpected number of bytes");
    }

    // Receive the same string back from the server
    unsigned int totalBytesRcvd = 0;
    fputs("Received:", stdout);
    while (totalBytesRcvd < echoStringLen) {
        char buffer[BUFSIZ];
        numbBytes = recv(sock, buffer, BUFSIZ - 1, 0);
        if (numbBytes < 0) {
            DieWithSystemMessage("recv() failed");
        } else if (numbBytes == 0) {
            DieWithUserMessage("recv()", "connection closed prematurely");
        }

        totalBytesRcvd += numbBytes;
        buffer[numbBytes] = '\0';
        fputs(buffer, stdout);
    }

    fputc('\n', stdout);

    close(sock);
    exit(0);
}
