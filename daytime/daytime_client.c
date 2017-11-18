//
// Created by zwpdbh on 18/11/2017.
//

#include "../lib/unp.h"

int main(int argc, char* argv[]) {
    int sockfd, n;

    char recvline[MAXLINE + 1];
    struct sockaddr_in servaddr;

    if (argc != 1) {
        err_quit("usage: a.out <IPaddress>");
    }

    return 0;
}