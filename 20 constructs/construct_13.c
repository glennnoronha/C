#include <stdio.h>
#include <string.h>

struct Person {
    char name[50];
    int age;
};

int main() {
    struct Person jacey;
    jacey.age = 21;
    strcpy(jacey.name, "Jacey");
    return 0;
}