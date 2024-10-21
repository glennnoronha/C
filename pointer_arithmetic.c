#include <stdio.h>
#include <time.h>

#define SIZE 600

int main() {
    int array[SIZE][SIZE];
    clock_t start, end;
    double cpu_time_used;

    // Initialize the array
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            array[i][j] = i + j;
        }
    }

    start = clock();

    // Access the elements using pointer arithmetic
    int sum = 0;
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            sum += *(*(array + i) + j);
        }
    }

    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("Time used (Pointers): %f seconds\n", cpu_time_used);
    printf("Sum: %d\n", sum);

    return 0;
}
