# include <stdio.h>

int main() {

    char grade;

    printf("Enter your grade: ");
    scanf(" %c", &grade);

    switch (grade)
    {
    case 'A':
        printf("Excellent!\n");
        break;

    case 'B':
        printf("Well done!\n");
        break;

    case 'C':
        printf("Good job!\n");
        break;

    case 'D':
        printf("You passed!\n");
        break;
        
    default:
        printf("Keep trying!\n");
        break;
    }
    return 0;
}
