//
// Created by zwpdbh on 04/12/2017.
//

#ifndef LEARNING_UNIX_NETWORK_PROGRAMMING_VOTEPROTOCOL_H
#define LEARNING_UNIX_NETWORK_PROGRAMMING_VOTEPROTOCOL_H

#include <stdlib.h>
#include <stdbool.h>

struct VoteInfo {
    uint64_t count;
    int candidate;
    bool isInquiry;
    bool isResponse;
};

typedef struct VoteInfo VoteInfo;

enum {
    MAX_CANDIDATE = 1000,
    MAX_WIRE_SIZE = 500 //maximum length of an encoded message on the wire
};


#endif //LEARNING_UNIX_NETWORK_PROGRAMMING_VOTEPROTOCOL_H
