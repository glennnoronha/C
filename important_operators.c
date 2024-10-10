#include <stdio.h>
int main(void) {

    int a = 5;
    int b = 10;

    // conditional operator
    int max = (a > b) ? a : b;

    printf("max: %d\n", max);

    // sizeof operator
    int size = sizeof(max);
    printf("size: %d\n", size);

    // comma operator
    for(int i = 0, j = 10; i < 10; i++, j--) {
        // body of the loop
        printf("i: %d, j: %d\n", i, j);
    }
    return 0;
}