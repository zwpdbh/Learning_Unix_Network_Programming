//
// Created by zwpdbh on 16/11/2017.
//

#ifndef INC_02_BASIC_TCP_SOCKETS_PRACTICAL_H
#define INC_02_BASIC_TCP_SOCKETS_PRACTICAL_H

#include <stdbool.h>
#include <stdio.h>

void DieWithSystemMessage(const char* msg);
void DieWithUserMessage(const char* msg, const char* detail);
void PrintSocketAddress(const struct sockaddr *address, FILE *stream);

int SetupTCPClientSocket(const char* host, const char* service);
int SetupTCPServerSocket(const char *service);
int AcceptTCPConnection(int servSock);
void HandleTCPClient(int clntSocket);
bool SockAddrsEqual(const struct sockaddr *addr1, const struct sockaddr *addr2);

static unsigned long MAXSTRINGLENGTH = 1024;

#endif //INC_02_BASIC_TCP_SOCKETS_PRACTICAL_H
