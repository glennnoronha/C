#include <stdio.h>

int main(){
    int age;
    double height;
    char initial;

    printf("Enter your age: ");
    scanf("%d", &age);

    printf("Enter your height in metres: ");
    scanf("%lf", &height);
    
    printf("Enter your first initial: ");
    scanf(" %c", &initial);

    printf("You are %d years old, %lf metres tall and your first initial is %c.", age, height, initial);

    return 0;
}