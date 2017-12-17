//
// Created by zwpdbh on 17/12/2017.
//

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define NUM_THREADS 4

void* busyWork(void* t) {
    int i;
    long tid;
    double result = 0.0;
    tid = (long)t;
    printf("\nThread %ld starting...", tid);

    for (int i = 0; i < 1000000; i++) {
        result += sin(i) * tan(i);
    }
    printf("\nThread %ld done. Result = %e\n", tid, result);
    pthread_exit((void*) t);
}

int main(int argc, char* argv[]) {

    pthread_t thread[NUM_THREADS];
    pthread_attr_t attr;
    int rc;
    long t;
    void* status;

    /* initialize and set thread detached attribute */
    pthread_attr_init(&attr);
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);

    for (t = 0; t < NUM_THREADS; t++) {
        printf("Main: creating thread %ld\n", t);
        rc = pthread_create(&thread[t], &attr, busyWork, (void*) t);
        if (rc) {
            printf("Error; return code from pthread_create() is %d\n", rc);
            exit(EXIT_FAILURE);
        }
    }

    /* free attribute and wait for the other threads */
    pthread_attr_destroy(&attr);

    for (t = 0; t < NUM_THREADS; t++) {
        rc = pthread_join(thread[t], &status);
        if (rc) {
            printf("Error; return code from pthread_join() is %d\n", rc);
            exit(EXIT_FAILURE);
        }
        printf("main: completed join with thread %ld having a status of %ld\n", t, (long)status);
    }

    printf("main: program completed. exiting\n");
    pthread_exit(NULL);
}