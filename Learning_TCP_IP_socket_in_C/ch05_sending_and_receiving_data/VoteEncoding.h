//
// Created by zwpdbh on 04/12/2017.
//



#ifndef LEARNING_UNIX_NETWORK_PROGRAMMING_VOTEENCODING_H
#define LEARNING_UNIX_NETWORK_PROGRAMMING_VOTEENCODING_H

#include <stdbool.h>
#include <stdlib.h>
#include "VoteProtocol.h"

bool Decode(uint8_t *inBuf, size_t mSize, VoteInfo *v);
size_t Encode(VoteInfo *v, uint8_t *outBuf, size_t bufSize);

#endif //LEARNING_UNIX_NETWORK_PROGRAMMING_VOTEENCODING_H
