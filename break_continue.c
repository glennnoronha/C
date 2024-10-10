#include <stdio.h>

int main() {
    int i;

    printf("Example of continue:\n");
    for (i = 1; i <= 10; i++) {
        if (i == 5) {
            continue; // Skip the rest of the loop when i is 5 and goes to 6
        }
        printf("%d ", i);
    }

    printf("\n");

    // Example with break
    printf("Example of break:\n");
    for (i = 1; i <= 10; i++) {
        if (i == 5) {
            break; // Exit the loop when i is 5
        }
        printf("%d ", i);
    }

    return 0;
}
