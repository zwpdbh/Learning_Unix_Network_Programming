//
// Created by zwpdbh on 16/11/2017.
//

#ifndef INC_02_BASIC_TCP_SOCKETS_PRACTICAL_H
#define INC_02_BASIC_TCP_SOCKETS_PRACTICAL_H

void DieWithSystemMessage(const char* msg);
void DieWithUserMessage(const char* msg, const char* detail);
void PrintSocketAddress(const struct sockaddr *address, FILE *stream);
int SetupTCPClientSocket(const char* host, const char* service);
#endif //INC_02_BASIC_TCP_SOCKETS_PRACTICAL_H
