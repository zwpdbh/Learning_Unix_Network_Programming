//
// Created by zwpdbh on 04/12/2017.
//

/**The server prepares its socket and waits for incoming connections like the other servers we have seen.
 * When a connection arrives, our program receives and processes messages over that connection until
 * the client closes it.*/

#include <memory.h>
#include "../lib/Practical.h"
#include "VoteProtocol.h"
#include "Framer.h"
#include "VoteEncoding.h"

static uint64_t counts[MAX_CANDIDATE + 1];

int main(int argc, char* argv[]) {
    if (argc != 2)
        DieWithUserMessage("Parameter(s)", "<Server Port/Service>");

    int servSock = SetupTCPServerSocket(argv[1]);
    // servSock is now ready to use to accept connections

    for (;;) {
        // wait for a client to connect
        int clntSock = AcceptTCPConnection(servSock);

        // create an input stream from the socket
        FILE* channel = fdopen(clntSock, "r+");
        if (channel == NULL) {
            DieWithSystemMessage("fdopen() failed");
        }

        // receive message until connection closes
        int mSize;
        uint8_t inBuf[MAX_WIRE_SIZE];
        VoteInfo v;
        printf("receive message ... \n");
        while ((mSize = GetNextMsg(channel, inBuf, MAX_WIRE_SIZE)) > 0) { //
            memset(&v, 0, sizeof(v));       // clear vote information
            printf("Received message (%d bytes)\n", mSize);
            if (Decode(inBuf, mSize, &v)) {
                if (!v.isResponse) {
                    v.isResponse = true;
                    if (v.candidate >= 0 && v.candidate <= MAX_CANDIDATE) {
                        if (!v.isInquiry) {
                            counts[v.candidate] += 1;
                        }
                        v.count = counts[v.candidate];
                    } // Ignore invalid candidates
                }

                uint8_t outBuf[MAX_WIRE_SIZE];
                mSize = Encode(&v, outBuf, MAX_WIRE_SIZE);
                if (PutMsg(outBuf, mSize, channel) < 0) {
                    fputs("Error framing/outputting message\n", stderr);
                    break;
                } else {
                    printf("Processed %s for candidate %d; current count is %llu.\n", (v.isInquiry ? "inquiry" : "vote"), v.candidate, v.count);
                }
                fflush(channel);
            } else {
                fputs("Parse error, closing connection. \n", stderr);
                break;
            }
        }
        puts("Client finished");
        fclose(channel);
    }
}