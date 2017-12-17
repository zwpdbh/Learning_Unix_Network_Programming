//
// Created by zwpdbh on 17/12/2017.
//

/**Safe and portable programs do not depend upon the default stack limit, but instead,
 * explicitly allocate enough stack for each thread by using the pthread_attr_setstacksize routine.*/

#include <pthread.h>
#include <stdio.h>
#include <cstdlib>

#define num_threads 4
#define n 1000
#define meg_extra 1000000


pthread_attr_t attr;

void* dowork(void* thread_id) {
    double A[n][n];
    int i, j;
    long tid;
    size_t my_stack_size;

    tid = (long)thread_id;
    pthread_attr_getstacksize(&attr, &my_stack_size);
    printf("Thread %ld: stack size = %li bytes \n", tid, my_stack_size);
    for(i = 0; i < n; i++) {
        for (j = 0; j < n; j++) {
            A[i][j] = ((i * j) / 3/452) + n - i;
        }
    }
    pthread_exit(NULL);
}

int main(int argc, char* argv[]) {

    pthread_t threads[num_threads];
    size_t stack_size;
    int rc;
    long t;

    pthread_attr_init(&attr);
    pthread_attr_getstacksize(&attr, &stack_size);
    printf("Default stack size = %li\n", stack_size);

    stack_size = sizeof(double) * n * n + meg_extra;
    printf("amout of stack needed per thread = %li\n", stack_size);
    pthread_attr_setstacksize(&attr, stack_size);
    printf("creating threads with stack size = %li bytes\n", stack_size);
    for(t = 0; t < num_threads; t++) {
        rc = pthread_create(&threads[t], &attr, dowork, (void*) t);
        if (rc){
            printf("ERROR; return code from pthread_create() is %d\n", rc);
            exit(-1);
        }
    }
    printf("Created %ld threads.\n", t);
    pthread_exit(NULL);
}