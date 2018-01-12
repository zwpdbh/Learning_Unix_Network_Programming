//
// Created by zwpdbh on 12/01/2018.
//

#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <pthread.h>

void cleanup(void* arg) {
    printf("cleanup: %s\n", (char*) arg);
}

void* thread_func01(void* arg) {
    printf("thread 01 start\n");

    pthread_cleanup_push(cleanup, (char*) "thread 01 first handler");
        pthread_cleanup_push(cleanup, (char*) "thread 01 second handler");
            printf("thread 01 push complete\n");
            if (arg)
                return((void*) 1);
        pthread_cleanup_pop(0);
    pthread_cleanup_pop(0);
    return((void *)1);
}

void* thread_func02(void* arg) {
    printf("thread 02 start\n");

    pthread_cleanup_push(cleanup, (char*) "thread 02 first handler");
        pthread_cleanup_push(cleanup, (char*) "thread 02 second handler");
            printf("thread 02 push complete\n");
            if (arg)
                pthread_exit((void*) 2);
            pthread_cleanup_pop(0);
        pthread_cleanup_pop(0);
    pthread_exit((void*) 2);
}


void err_exit(int err, const char *errString) {
    printf("%d, ", err);
    printf("%s", errString);
    printf("\n");
    exit(EXIT_FAILURE);
}



int main(void) {
    int err;
    pthread_t tid1, tid2;
    void *tret;

    err = pthread_create(&tid1, NULL, thread_func01, (void *) 1);
    if (err != 0) {
        err_exit(err, "can't create thread 1");
    }
    err = pthread_create(&tid2, NULL, thread_func02, (void *) 1);
    if (err != 0) {
        err_exit(err, "can't create thread 2");
    }
    err = pthread_join(tid1, &tret);
    if (err != 0) {
        err_exit(err, "can't join with thread 1");
    }
    printf("thread 1 exit code %ld\n", (long) tret);
    err = pthread_join(tid2, &tret);
    if (err != 0) {
        err_exit(err, "can't join with thread 2");
    }
    printf("thread 2 exit code %ld\n", (long) tret);

    exit(EXIT_SUCCESS);
}