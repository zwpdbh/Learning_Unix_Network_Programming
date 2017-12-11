//
// Created by zwpdbh on 01/12/2017.
//

#include <stdio.h>
#include <ntsid.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
#include "Practical.h"

void PrintSocketAddress(const struct sockaddr *address, FILE *stream) {
    // test for address and stream
    if (address == NULL || stream == NULL) {
        return;
    }

    void* numericAddress; // pointer to binary address

    // buffer to contain result, IPV6 sufficient to hold IPv4
    char addrBuffer[INET6_ADDRSTRLEN];
    in_port_t port;

    // set pointer to address based on address family
    switch (address->sa_family) {
        case AF_INET:
            numericAddress = &(((struct sockaddr_in*) address)->sin_addr);
            port = ntohs(((struct sockaddr_in *) address)->sin_port);
            break;
        case AF_INET6:
            numericAddress = &((struct sockaddr_in6*) address)->sin6_addr;
            port = ntohs(((struct sockaddr_in6*) address)->sin6_port);
            break;
        default:
            fputs("[unknown type]", stream);
            return;
    }

    // convert binary to printable address
    if (inet_ntop(address->sa_family, numericAddress, addrBuffer, sizeof(addrBuffer)) == NULL) {
        fputs("[invalid address]", stream);
    } else {
        fprintf(stream, "%s", addrBuffer);
        if (port != 0) {
            fprintf(stream, " %u", port);
        }
    }
}

bool SockAddrsEqual(const struct sockaddr *addr1, const struct sockaddr *addr2) {
    if (addr1 == NULL || addr2 == NULL) {
        return addr1 == addr2;
    } else if (addr1->sa_family != addr2->sa_family) {
        return false;
    } else if (addr1->sa_family == AF_INET) {
        struct sockaddr_in* ipv4addr1 = (struct sockaddr_in*) addr1;
        struct sockaddr_in* ipv4addr2 = (struct sockaddr_in*) addr2;
        return (ipv4addr1->sin_addr.s_addr == ipv4addr2->sin_addr.s_addr) && (ipv4addr1->sin_port == ipv4addr2->sin_port);
    } else if (addr1->sa_family == AF_INET6) {
        struct sockaddr_in6* ipv6addr1 = (struct sockaddr_in6*) addr1;
        struct sockaddr_in6* ipv6addr2 = (struct sockaddr_in6*) addr2;
        return memcmp(&ipv6addr1->sin6_addr, &ipv6addr2->sin6_addr, sizeof(struct sockaddr_in6)) == 0
               && ipv6addr1->sin6_port == ipv6addr2->sin6_port;
    } else {
        return false;
    }
}