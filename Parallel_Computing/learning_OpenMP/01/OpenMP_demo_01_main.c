//
// Created by zwpdbh on 05/01/2018.
//

/**
 * This program demonstrate the use of OpenMP to solve the problem of multiplying an m by n matrix with a vector of length
 * n, and store the result into a vector a of length m
 *
 * The most straightforward way is to calculate the result vector a by computing the dot product of the rows of the matrix
 * and vector
 *
 * To execute this program, on terminal:
 * ./bin/OpenMP_demo_01
    Please give m and n for matrix's m row and n column:
    100, 50
    initializing matrix B and vector c
    executing mxv function for m = 100, n = 50
 */

#include <stdio.h>
#include <stdlib.h>

void mxv(int m, int n, double* restrict a, double* restrict b, double* restrict c);

int main(int argc, char* argv[]) {
    double *a, *b, *c;


    // m is the number of rows, n is the number of columns
    int i, j, m, n;

    printf("Please give m and n for matrix's m row and n column: \n");
    scanf("%d, %d",&m, &n);

    if ((a = (double* )malloc(m * sizeof(double))) == NULL) {
        perror("memory allocation for a");
    }

    if ((b = (double*) malloc(m * n * sizeof(double))) == NULL) {
        perror("memory allocation for b");
    }

    if ((c = (double*) malloc(n * sizeof(double))) == NULL) {
        perror("memory allocation for c");
    }

    printf("initializing matrix B and vector c\n");
    for (j = 0; j < n; j++) {
        c[j] = 2.0;
    }

    for (i = 0; i < m; i++) {
        for (j = 0; j < n; j++) {
            b[i * n + j] = i;
        }
    }

    printf("executing mxv function for m = %d, n = %d\n", m, n);
    (void) mxv(m, n, a, b, c);
    free(a);
    free(b);
    free(c);


    return 0;
}


void mxv(int m, int n, double* restrict a, double* restrict b, double* restrict c)
{
    int i, j;

    for (i = 0; i < m; i++) {
        a[i] = 0.0;

        for (j = 0; j < n; j++) {
            a[i] += b[i * n + j] * c[j];
        }
    }
}

