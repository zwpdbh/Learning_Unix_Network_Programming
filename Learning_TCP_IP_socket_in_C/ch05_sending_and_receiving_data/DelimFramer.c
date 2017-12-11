//
// Created by zwpdbh on 04/12/2017.
//

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "../lib/Practical.h"

static const char DELIMITER = '\n';

/**Read up to bufSize Bytes or until delimiter, copying into the given buffer as we go
 * Encountering EOF after some data but before delimiter results in failure
 * Returns the number of bytes placed in buf
 * If buffer fills without encountering delimiter, negative count is returned
 * If stream ends before first byte, -1 is returned
 * Precondition: buf has room for at least bufSize bytes*/
int GetNextMsg(FILE *in, uint8_t *buf, size_t bufSize) {
    int count = 0;
    int nextChar;
    while (count < bufSize) {
        nextChar = getc(in);
        if (nextChar == EOF) {
            if (count > 0)
                DieWithUserMessage("GetNextMsg()", "Stream ended prematurely");
            else
                printf("line = 27, means nextCHar == EOF, and count = 0, means the first character is EOF\n");
                return -1;
        }
        if (nextChar == DELIMITER)
            break;
        buf[count++] = (uint8_t)nextChar;
    }


    if (nextChar != DELIMITER) { // count == bufSize, out of space
        printf("line = 35\n");
        return -count;
    } else {
        printf("line = 38\n");
        return count;
    }
}

/**Write the given message to the output stream, followed by the delimiter
 * return number of bytes written, or -1 on failure
 */
int PutMsg(uint8_t buf[], size_t msgSize, FILE *out) {
    // check for delimiter in message
    int i;

    for (i = 0; i < msgSize; i++) {
//        printf("i = %d, buf[i] = %c\n", i, buf[i]);
        if (buf[i] == DELIMITER) {
            return -1;
        }
    }
    printf("should not be reached.\n");
    if (fwrite(buf, 1, msgSize, out) != msgSize) {
        return -1;
    }

    fputc(DELIMITER, out);
    fflush(out);
    return msgSize;
}