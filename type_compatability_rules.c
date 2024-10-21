#include <stdio.h>

int main() {
    // Test 1: Implicit conversion from int to float and double
    int a = 10;
    float b = a;    // Implicit conversion from int to float
    double c = a;   // Implicit conversion from int to double
    printf("Test 1: Implicit conversion from int to float: b = %f\n", b);
    printf("Test 1: Implicit conversion from int to double: c = %lf\n", c);

    // Test 2: Implicit conversion from double to int 
    double x = 5.99;
    int y = x;      // Implicit conversion from double to int
    printf("Test 2: Implicit conversion from double to int: y = %d\n", y);

    // Test 3: Explicit casting from double to int
    double z = 7.45;
    int w = (int)z; // Explicit cast from double to int
    printf("Test 3: Explicit cast from double to int: w = %d\n", w);

    // Test 4: Implicit conversion between incompatible pointers (int* to float*)
    int p = 100;
    int *intPtr = &p;
    float *floatPtr = (float *)intPtr; // Explicit cast from int* to float*
    printf("Test 4: Pointer conversion from int* to float*: intPtr points to %d\n", *intPtr);
    // Dereferencing floatPtr might lead to undefined behavior
    printf("Test 4: Dereferencing floatPtr (undefined behavior): floatPtr = %f\n", *floatPtr);

    // Test 5: Void pointer compatibility and casting
    void *voidPtr = &p;   // void* is compatible with any pointer
    int *newIntPtr = (int *)voidPtr;   // Casting void* back to int*
    printf("Test 5: Casting void* back to int*: newIntPtr points to %d\n", *newIntPtr);

    return 0;
}
