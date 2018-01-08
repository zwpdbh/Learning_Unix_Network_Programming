//
// Created by zwpdbh on 05/01/2018.
//

#ifndef LEARNING_UNIX_NETWORK_PROGRAMMING_OMP_H
#define LEARNING_UNIX_NETWORK_PROGRAMMING_OMP_H

#ifdef _OPENMP
    #include <omp.h>
#else
    #define omp_get_thread_num() 0
#endif

int TID = omp_get_thread_num();

#endif //LEARNING_UNIX_NETWORK_PROGRAMMING_OMP_H
