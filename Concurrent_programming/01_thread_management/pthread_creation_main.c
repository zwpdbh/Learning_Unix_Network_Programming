//
// Created by zwpdbh on 10/01/2018.
//

#include <pthread.h>
#include <sys/types.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

pthread_t ntid;

void print_ids(const char* s) {
    pid_t pid;
    pthread_t tid;

    pid = getpid();
    tid = pthread_self();
    printf("%s pid:%lu tid:%lu at (0x%lx)\n", s, (unsigned long)pid, (unsigned long)tid, (unsigned long)tid);
}

void* thread_func(void *arg) {
    print_ids("new thread: ");
    return (void* )0;
}

int main(void) {
    int err;
    err = pthread_create(&ntid, NULL, thread_func, NULL);
    if (err != 0) {
        perror("cannot create thread\n");
        exit(EXIT_FAILURE);
    }
    print_ids("main thread: ");
    sleep(1);
    exit(0);
}