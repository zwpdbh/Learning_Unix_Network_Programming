//
// Created by zwpdbh on 10/01/2018.
//

#include "apue.h"

void err_exit(int error_no, const char * s, ...) {
    perror(s);
    exit(1);
}