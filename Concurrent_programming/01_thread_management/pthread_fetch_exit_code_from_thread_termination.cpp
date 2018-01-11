//
// Created by zwpdbh on 12/01/2018.
//

#include <sys/types.h>
#include <pthread.h>
#include <stdlib.h>
#include <stdio.h>

void* thread_func01(void *arg) {
    printf("thread_01 returning \n");
    return (void*) 1;
}

void* thread_func02(void* arg) {
    printf("thread_02 returning \n");
    return (void*) 2;
}

int main(void) {
    int err;
    pthread_t  tid_01, tid_02;
    void* tret;

    err = pthread_create(&tid_01, NULL, thread_func01, NULL);
    if (err != 0) {
        perror("can not create thread_01\n");
        exit(EXIT_FAILURE);
    }

    err = pthread_create(&tid_02, NULL, thread_func02, NULL);
    if (err != 0) {
        perror("can not create thread_02\n");
        exit(EXIT_FAILURE);
    }

    err = pthread_join(tid_01, &tret);
    // do error handling
    printf("thread_01 exit code %ld\n", (long) tret);

    err = pthread_join(tid_02, &tret);
    printf("thread_02 exit code %ld\n", (long) tret);

    exit(EXIT_SUCCESS);
}