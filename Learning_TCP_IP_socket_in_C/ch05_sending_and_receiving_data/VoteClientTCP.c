//
// Created by zwpdbh on 04/12/2017.
//

/**the can- didate ID is given as a command-line argument, along with a flag indicating that
 * the transaction is an inquiry (by default it is a vote request). Upon sending the request,
 * the client waits for the response and then closes the connection when it is received.*/

#include <memory.h>
#include "../lib/Practical.h"
#include "VoteProtocol.h"
#include "Framer.h"
#include "VoteEncoding.h"

int main(int argc, char* argv[]) {
    if (argc < 4 || argc > 5)
        DieWithUserMessage("Parameters", "<Server> <Port/Service> <Candidate> [I]");

    char* server = argv[1];
    char* service = argv[2];

    int candi = atoi(argv[3]);
    if (candi < 0 || candi > MAX_CANDIDATE)
        DieWithUserMessage("Candidate # not valid", argv[3]);

    bool inq = argc > 4 && strcmp(argv[4], "I") == 0;

    // Create a connected TCP socket
    int sock = SetupTCPClientSocket(server, service);
    if (sock < 0) {
        DieWithUserMessage("SetupTCPClientSocket() failed", "unable to connect");
    }

    FILE* str = fdopen(sock, "r+"); // wrap for stream i/o
    if (str == NULL)
        DieWithSystemMessage("fdopen() failed");

    // set up info for a request
    VoteInfo vi;
    memset(&vi, 0, sizeof(vi));

    vi.isInquiry = inq;
    vi.candidate = candi;

    // encode for transmission
    uint8_t  outbuf[MAX_WIRE_SIZE];
    size_t reqSize = Encode(&vi, outbuf, MAX_WIRE_SIZE); //

    // print info
    printf("Sending %zu-byte %s for candidate %d...\n", reqSize, (inq ? "inquiry" : "vote"), candi);
    // frame and send
    if (PutMsg(outbuf, reqSize, str) < 0)                // < problem happened at buf[3] = '\n';
        DieWithSystemMessage("PutMsg() failed");
    printf("should not be reached at this moment\n");

    // receive and print response
    uint8_t inbuf[MAX_WIRE_SIZE];
    size_t respSize = GetNextMsg(str, inbuf, MAX_WIRE_SIZE);
    if (Decode(inbuf, respSize, &vi)) {
        printf("Received:\n");
        if (vi.isResponse) {
            printf(" Response to ");
        }
        if (vi.isInquiry) {
            printf("inquiry ");
        } else {
            printf("vote ");
        }
        printf("for candidate %d\n", vi.candidate);
        if (vi.isResponse) {
            printf(" count = %llu\n", vi.count);
        }
    }

    // close up
    fclose(str);

    exit(0);
}