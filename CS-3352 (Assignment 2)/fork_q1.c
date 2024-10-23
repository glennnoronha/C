#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main() {
    int x = 100;
    pid_t pid = fork();

    if (pid < 0) {
        printf("Fork failed!\n");
        return 1;
    } else if (pid == 0) { 
        printf("Child process: x = %d\n", x);
        x = 200;
        printf("Child process changed x to %d\n", x);
    } else {
        printf("Parent process: x = %d\n", x);
        x = 300;
        printf("Parent process changed x to %d\n", x);
    }
    
    return 0;
}

