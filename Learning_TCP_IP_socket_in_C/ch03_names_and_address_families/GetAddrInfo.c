//
// Created by zwpdbh on 01/12/2017.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <netdb.h>
#include "../lib/Practical.h"

int main(int argc, char* argv[]) {
    if (argc != 3) {
        DieWithUserMessage("Parameter(s)", "<Address/Name> <Port/Service>");
    }

    char* addrString = argv[1]; // server address / name
    char* portString = argv[2]; // server port / service

    // tell the system what kinds of address info we want
    struct addrinfo addrCriteria;
    memset(&addrCriteria, 0, sizeof(addrCriteria));
    addrCriteria.ai_family = AF_UNSPEC;
    addrCriteria.ai_socktype = SOCK_STREAM;
    addrCriteria.ai_protocol = IPPROTO_TCP;

    // get address associated with specified name / service
    struct addrinfo* addrList;
    int rtnVal = getaddrinfo(addrString, portString, &addrCriteria, &addrList);
    if (rtnVal != 0) {
        DieWithUserMessage("getaddrinfo() failed", gai_strerror(rtnVal));
    }

    for (struct addrinfo* addr = addrList; addr != NULL; addr = addr->ai_next) {
        PrintSocketAddress(addr->ai_addr, stdout);
        fputc("\n", stdout);
    }

    freeaddrinfo(addrList);
    exit(EXIT_SUCCESS);
}