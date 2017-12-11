//
// Created by zwpdbh on 02/12/2017.
//

#include <limits.h>
#include <stdint.h>
#include <stdio.h>

int main(int argc, char* argv[]) {
    printf("char_bit is %d\n\n", CHAR_BIT);

    printf("sizeof(char) is %d\n", sizeof(char));
    printf("sizeof(short) is %d\n", sizeof(short));
    printf("sizeof(int) is %d\n", sizeof(int));
    printf("sizeof(long) is %d\n", sizeof(long));
    printf("sizeof(long long) is %d\n\n", sizeof(long long));

    printf("sizeof(int8_t) is %d\n", sizeof(int8_t));
    printf("sizeof(int16_t) is %d\n", sizeof(int16_t));
    printf("sizeof(int32_t) is %d\n", sizeof(int32_t));
    printf("sizeof(int64_t) is %d\n\n", sizeof(int64_t));

    printf("sizeof(uint8_t) is %d\n", sizeof(uint8_t));
    printf("sizeof(uint16_t) is %d\n", sizeof(uint16_t));
    printf("sizeof(uint32_t) is %d\n", sizeof(uint32_t));
    printf("sizeof(uint64_t) is %d\n", sizeof(uint64_t));

    return 0;
}