//
// Created by zwpdbh on 04/12/2017.
//

/**Routines for text encoding of vote messages
 * wire format:
 * "voting <v|i> [R] <candidate id> <count>"*/

#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "../lib/Practical.h"
#include "VoteProtocol.h"

static const char* MAGIC = "Voting";
static const char* VOTESTR = "v";
static const char* INQSTR = "i";
static const char* RESPONSESTR = "R";
static const char* DELIMSTR = " ";
enum {
    BASE = 10
};

/**Encode voting message info as a text string.
 * Message will be silently truncated if buffer is too small
 * Invariants not checked ( 0 <= candidate <= 1000)*/
size_t Encode(VoteInfo *v, uint8_t *outBuf, size_t bufSize) {
    uint8_t* bufPtr = outBuf;
    long size = (size_t) bufSize;
    int rv = snprintf((char*) bufPtr, size, "%s %c %s %d", MAGIC, (v->isInquiry ? 'i' : 'v'), (v->isResponse ? "R" : ""), v->candidate);

    bufPtr += rv;
    size -= rv;

    if (v->isResponse) {
        rv = snprintf((char* )bufPtr, size, " %llu", v->count);
        bufPtr += rv;
    }
    return (size_t) (bufPtr - outBuf);
}

/**Extract message information from given buffer
 * Note: modifies input buffer*/
bool Decode(uint8_t *inBuf, const size_t mSize, VoteInfo *v) {
    char* token;
    token = strtok((char*) inBuf, DELIMSTR);
    // check for magic
    if (token == NULL || strcmp(token, MAGIC) != 0) {
        return false;
    }

    // get vote/inquiry indicator
    token = strtok(NULL, DELIMSTR);
    if (token == NULL) {
        return false;
    }

    if (strcmp(token, VOTESTR) == 0) {
        v->isInquiry = false;
    } else if (strcmp(token, INQSTR) == 0) {
        v->isInquiry = true;
    } else {
        return false;
    }

    // next token is either response flag or candidate id
    token = strtok(NULL, DELIMSTR);
    if (token == NULL) {
        return false;
    }

    if (strcmp(token, RESPONSESTR) == 0) {
        v->isResponse = true;
        token = strtok(NULL, DELIMSTR); // get candidate id
        if (token == NULL) {
            return false;
        }
    } else {
        v->isResponse = false;
    }

    // get candidate id
    v->candidate = atoi(token);
    if (v->isResponse) {
        token = strtok(NULL, DELIMSTR);
        if (token == NULL) {
            return false;
        }
        v->count = strtoll(token, NULL, BASE);
    } else {
        v->count = 0L;
    }
    return true;
}