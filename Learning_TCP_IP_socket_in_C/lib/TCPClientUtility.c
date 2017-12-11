//
// Created by zwpdbh on 01/12/2017.
//

#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include "Practical.h"


/**This function:
 * 1: get host's information using getaddrinfo()
 * 2: use the host's information to create socket()
 *    it create socket() on the multiple combination info from host
 * 3: return the first socket() that can connect with host*/
int SetupTCPClientSocket(const char* host, const char* service) {

    // tell the system what kind of address info we want
    struct addrinfo addCriteria;
    memset(&addCriteria, 0, sizeof(addCriteria));
    addCriteria.ai_family = AF_UNSPEC;
    addCriteria.ai_socktype = SOCK_STREAM;
    addCriteria.ai_protocol = IPPROTO_TCP;

    // get address(es)
    struct addrinfo* servAddr;
    int rtnVal = getaddrinfo(host, service, &addCriteria, &servAddr);
    if (rtnVal) {
        DieWithUserMessage("getaddrinfo() failed", gai_strerror(rtnVal));
    }

    int sock = -1;
    for (struct addrinfo* addr = servAddr; addr != NULL; addr = addr->ai_next) {
        // create a relaible, stream socket using TCP
        sock = socket(addr->ai_family, addr->ai_socktype, addr->ai_protocol);

        if (sock < 0) {
            continue;
        }

        // establish the connection to the echo server
        if (connect(sock, addr->ai_addr, addr->ai_addrlen) == 0) {
            break;
        }

        close(sock);
        sock = -1;
    }

    freeaddrinfo(servAddr);
    return sock;
}