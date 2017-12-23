//
// Created by zwpdbh on 17/12/2017.
//

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <zconf.h>

#define num_threads 3
#define t_count 10
#define count_limit 12

int count = 0;
int thread_ids[3] = {0, 1, 2};

pthread_mutex_t count_mutex;
pthread_cond_t count_threshold_cv;

void* inc_count(void* t) {
    int i;
    long my_id = (long) t;
    for (i = 0; i < t_count; i++) {
        pthread_mutex_lock(&count_mutex);
        count++;

        if (count == count_limit) {
            pthread_cond_signal(&count_threshold_cv);
            printf("inc_count(): thread %ld, count = %d Threshold reached.\n", my_id, count);
        }
        printf("inc_count(): thread %ld, count = %d, unlocking mutext\n", my_id, count);
        pthread_mutex_unlock(&count_mutex);

        sleep(1);
    }

    pthread_exit(NULL);
}

void* watch_count(void* t) {
    long my_id = (long) t;
    printf("starting watch_count(): thread %ld\n", my_id);

    /*pthread_cond_wait() blocks the calling thread until the specified condition is signalled*/
    pthread_mutex_lock(&count_mutex);

    while (count < count_limit) {
        /* a call to pthread_cond_wait() automatically and atomically unlocks the
         * associated mutex variable*/
        pthread_cond_wait(&count_threshold_cv, &count_mutex);
        printf("watch_count(): thread %ld Condition signal received.\n", my_id);
    }
    count += 125;
    printf("watch_count(): thread %ld count now = %d.\n", my_id, count);
    pthread_mutex_unlock(&count_mutex);

    pthread_exit(NULL);
}

int main(int argc, char* argv[]) {
    int i, rc;
    long t1 = 1;
    long t2 = 2;
    long t3 = 3;

    pthread_t threads[3];
    pthread_attr_t attr;

    pthread_mutex_init(&count_mutex, NULL);
    pthread_cond_init(&count_threshold_cv, NULL);

    /*create threads in a joinable state*/
    pthread_attr_init(&attr);
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);

    pthread_create(&threads[0], &attr, watch_count, (void*) t1);
    pthread_create(&threads[1], &attr, inc_count, (void*) t2);
    pthread_create(&threads[1], &attr, inc_count, (void*) t3);

    /*wait for all threads to complete*/
    for (i = 0; i < num_threads; i++) {
        pthread_join(threads[i], NULL);
    }

    printf ("Main(): Waited on %d  threads. Done.\n", num_threads);

    pthread_attr_destroy(&attr);
    pthread_mutex_destroy(&count_mutex);
    pthread_cond_destroy(&count_threshold_cv);

    pthread_exit(NULL);
}