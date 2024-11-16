#include <stdio.h>
#include <stdbool.h>

int main() {
    // Question 3a
    int j = 15;  // Example initialization for j
    int k = (j + 13) / 27;
    int i;

    while (1) {
        if (k > 10) {
            break;
        }
        k = k + 1;
        i = 3 * k - 1;
    }
    printf("Final values - k: %d, i: %d\n", k, i);

    // Question 4a
    k = 3;  // Example initialization for k

    switch (k) {
        case 1: case 2:
            j = 2 * k - 1;
            break;
        case 3: case 5:
            j = 3 * k + 1;
            break;
        case 4:
            j = 4 * k - 1;
            break;
        case 6: case 7: case 8:
            j = k - 2;
            break;
        default:
            j = 0;  // handle cases not in the specified range
    }
    printf("Value of j: %d\n", j);

    // Question 5
    int n = 5;  
    int x[5][5] = { 
        {0, 0, 0, 0, 0},
        {0, 1, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 1, 0},
        {0, 0, 0, 0, 0}
    };

    for (int i = 0; i < n; i++) {
        bool isAllZero = true;
        for (int j = 0; j < n; j++) {
            if (x[i][j] != 0) {
                isAllZero = false;
                break;
            }
        }
        if (isAllZero) {
            printf("First all-zero row is: %d\n", i + 1);
            break;
        }
    }

    return 0;
}
