#include <stdio.h>

int main() {
    int num = 1;
    switch (num) {
        case 1:
            printf("Number is one\n");
            break;
        case 2:
            printf("Number is two\n");
            break;
        default:
            printf("Number is neither one nor two\n");
    }
    return 0;
}
