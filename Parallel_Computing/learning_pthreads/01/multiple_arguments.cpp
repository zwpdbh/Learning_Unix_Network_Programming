//
// Created by zwpdbh on 16/12/2017.
//

#include <pthread.h>
#include <stdio.h>
#include <cstdlib>

#define NUM_Threads 5

struct thread_data {
    int thread_id;
    int sum;
    char* message;
};

static char stringBuf[50];

struct thread_data thread_data_array[NUM_Threads];

void* printHellow(void* threadarg) {
    struct thread_data* data;
    data = (thread_data*) threadarg;
    printf("thread_id = %d\n", data->thread_id);
    printf("sum = %d\n", data->sum);
    printf("%s\n", data->message);

    pthread_exit(NULL);
}

int main(int argc, char* argv[]) {
    pthread_t threads[NUM_Threads];
    int rc;
    long t;

    for (t = 0; t < NUM_Threads; t++) {
        thread_data_array[t].thread_id = t;
        thread_data_array[t].sum = NUM_Threads;
        thread_data_array[t].message = stringBuf;
        snprintf(thread_data_array[t].message, 50, "thread info: %ld\n", t);

        rc = pthread_create(&threads[t], NULL, printHellow, (void*) &thread_data_array[t]);

        if (rc) {
            printf("Error, return code from pthread_create() is %d\n", rc);
            exit(-1);
        }
    }

    pthread_exit(NULL);
}