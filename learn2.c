#include <stdio.h>
#include <ctype.h>

int main()
{

    char i = 1000;
    short s = 10;

    int x = (int)s;
    x = x + s;

    // use an inputted name in lower case and make it upper case

    char name[100];
    printf("Enter your name: ");
    scanf("%s", name);

    // Convert the name to uppercase
    for (int i = 0; name[i] != '\0'; i++)
    {
        name[i] = toupper(name[i]);
    }

    // Print uppercase name
    printf("Your name in uppercase: %s\n", name);

    return 0;
}