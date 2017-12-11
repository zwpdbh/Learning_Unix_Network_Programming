//
// Created by zwpdbh on 01/12/2017.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include "../lib/Practical.h"

int main(int argc, char *argv[]) {

    if (argc < 3 || argc > 4) {
        DieWithUserMessage("Parameters", "<Server Address/Name> <Echo Word> [<Server Port/Service> 111]");
    }

    char* server = argv[1];
    char* echoString = argv[2];

    char* service = (argc == 4) ? argv[3] : "echo";

    // create a connected TCP socket
    int sock = SetupTCPClientSocket(server, service);
    if (sock < 0) {
        DieWithUserMessage("SetupTCPClientSocket() failed", "unable to connect");
    }


    size_t echoStringLen = strlen(echoString);

    // send the string to the server
    ssize_t numBytes = send(sock, echoString, echoStringLen, 0);
    if (numBytes < 0) {
        DieWithSystemMessage("send() failed");
    } else if (numBytes != echoStringLen) {
        DieWithUserMessage("send()", "send unexpected number of bytes");
    }

    // Receive the same string back from the server
    unsigned int totalBytesRcvd = 0;
    fputs("Received: ", stdout);

    while (totalBytesRcvd < echoStringLen) {
        char buffer[BUFSIZ];
        // receive up to the buffer size
        numBytes = recv(sock, buffer, BUFSIZ - 1, 0);
        if (numBytes < 0) {
            DieWithSystemMessage("recv() failed");
        } else if (numBytes == 0) {
            DieWithUserMessage("recv()", "connection closed prematurely");
        }

        totalBytesRcvd += numBytes;
        // terminate the string
        buffer[numBytes] = '\0';
        fputs(buffer, stdout);
    }

    fputc('\n', stdout);
    close(sock);
    exit(0);
}
