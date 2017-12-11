//
// Created by zwpdbh on 04/12/2017.
//

#ifndef LEARNING_UNIX_NETWORK_PROGRAMMING_FRAMER_H
#define LEARNING_UNIX_NETWORK_PROGRAMMING_FRAMER_H

#include <stdio.h>
#include <stdlib.h>

int GetNextMsg(FILE *in, uint8_t *buf, size_t bufSize);
int PutMsg(uint8_t buf[], size_t msgSize, FILE *out);

#endif //LEARNING_UNIX_NETWORK_PROGRAMMING_FRAMER_H
