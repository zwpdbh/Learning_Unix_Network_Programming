//
// Created by zwpdbh on 05/01/2018.
//

/**
 * This program demonstrate the use of OpenMP to solve the problem of multiplying an m by n matrix with a vector of length
 * n, and store the result into a vector a of length m
 *
 * The most straightforward way is to calculate the result vector a by computing the dot product of the rows of the matrix
 * and vector
 */

#include <stdio.h>
#include <stdlib.h>

void mxv(int m, int n, double* restrict a, double* restrict b, double* restrict c);

int main(int argc, char* argv[]) {
    double *a, *b, *c;

    int i, j, m, n;

}

