//
// Created by zwpdbh on 17/12/2017.
//

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <memory.h>

#define num_threads 4
#define vec_len 100

typedef struct {
    double* a;
    double* b;
    double sum;
    int veclen;
} dot_data;

dot_data dotstr;
pthread_t  call_thd[num_threads];
pthread_mutex_t mutex_sum;

void* dot_product(void *arg) {
    /*define and use local variables for convenience*/
    int i;
    int start;
    int end;
    int len;

    long offset;
    double mysum;
    double* x;
    double* y;

    offset = (long)arg;

    len = dotstr.veclen;

    start = offset * len;
    end = start + len;
    printf("offset = %ld, start = %ld, end = %ld, len = %d\n", offset, start, end, len);

    x = dotstr.a;
    y = dotstr.b;

    mysum = 0;
    for (i = start; i < end; i++) {
        mysum += (x[i] * y[i]);
    }

    /*lock a mutex to update the value in the shared structure, and unlock it upon updating*/
    pthread_mutex_lock(&mutex_sum);
    dotstr.sum += mysum;
    printf("at thread %ld, the dotstr.sum = %f\n", offset, dotstr.sum);
    pthread_mutex_unlock(&mutex_sum);

    pthread_exit((void*) 0);
}

int main(int argc, char* argv[]) {
    long i;
    double* a;
    double* b;
    void* status;
    pthread_attr_t attr;

    a = (double*) malloc(num_threads * vec_len * sizeof(double));
    b = (double*) malloc(num_threads * vec_len * sizeof(double));

    for (i = 0; i < vec_len * num_threads; i++) {
        a[i] = 1.0;
        b[i] = a[i];
    }

    dotstr.veclen = vec_len;
    dotstr.a = a;
    dotstr.b = b;
    dotstr.sum = 0;

    pthread_mutex_init(&mutex_sum, NULL);

    /* create threads to perform the dot_product*/
    pthread_attr_init(&attr);
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);

    for (i = 0; i < num_threads; i++) {
        pthread_create(&call_thd[i], &attr, dot_product, (void *) i);
    }

    printf("sum = %f\n", dotstr.sum);
    free(a);
    free(b);

    pthread_mutex_destroy(&mutex_sum);
    pthread_exit(NULL);
}