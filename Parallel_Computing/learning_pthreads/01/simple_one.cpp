//
// Created by zwpdbh on 16/12/2017.
//

#include <pthread.h>
#include <stdio.h>
#include <cstdlib>

#define NUM_Threads 5

void* printHellow(void* thread_id) {
    long tid;
    tid = (long) thread_id;
    printf("Hellow world! from thread #%ld \n", tid);
    pthread_exit(NULL);
}

int main(int argc, char* argv[]) {
    pthread_t threads[NUM_Threads];
    int rc;
    long t;
    for (t = 0; t < NUM_Threads; t++) {
        printf("In main: creating thread %ld\n", t);
        rc = pthread_create(&threads[t], NULL, printHellow, (void*) t);
        if (rc) {
            printf("Error, return code from pthread_create() is %d\n", rc);
            exit(-1);
        }
    }

    pthread_exit(NULL);
}