#include <stdio.h>

union Data {
    int i;
    float f;
    char c;
};

int main() {
    union Data data;
    data.i = 10;
    printf("data.i = %d\n", data.i);
    data.f = 3.14;
    printf("data.f = %f\n", data.f);
    data.c = 'A';
    printf("data.c = %c\n", data.c);

    return 0;
}
