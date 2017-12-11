//
// Created by zwpdbh on 01/12/2017.
//

#include <stdio.h>
#include <unistd.h>

#include "../lib/Practical.h"

int main(int argc, char* argv[]) {
    if (argc != 2) {
        DieWithUserMessage("Parameter(s)", "<Server Port/Service>");
    }

    char *service = argv[1];

    // create socket for incoming connections
    int servSock = SetupTCPServerSocket(service);
    if (servSock < 0) {
        DieWithUserMessage("SetupTCPServerSocket() failed", service);
    }

    for (;;) {
        int clntSock = AcceptTCPConnection(servSock);
        HandleTCPClient(clntSock);
        close(clntSock);
    }

}