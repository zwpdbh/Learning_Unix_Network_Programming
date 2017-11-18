//
// Created by zwpdbh on 18/11/2017.
//

#include <stdio.h>

void err_quit(const char* errorMessage, ...) {
    fprintf(stderr, errorMessage);
}