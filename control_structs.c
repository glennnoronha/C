#include <stdio.h>
int main(void) {
    //if statement
    int a = 10;
    int b = 5;
    if (a > b) {            
        printf("a is greater than b\n");    
    }  

    // if else statement
    int c = 5;    
    int d = 10;    
    if (c > d) {        
        printf("c is greater than d\n");    
    } else {        
        printf("d is greater than c\n");    
    }

    // else if statement
    int e = 5;
    int f = 10;
    if (e > f) {
        printf("e is greater than f\n");
    } else if (e < f) {
        printf("f is greater than e\n");
    } else {
        printf("e and f are equal\n");
    }

    // switch statement
    int g = 2;
    switch (g) {
        case 1:
            printf("g is 1\n");
            break;
        case 2:
            printf("g is 2\n");
            break;
        case 3:
            printf("g is 3\n");
            break;
        default:
            printf("g is not 1, 2, or 3\n");
            break;
    }

    return 0;
}