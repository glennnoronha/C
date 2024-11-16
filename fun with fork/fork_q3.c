#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>

int main() {
    int pid = fork(); 

    if (pid == 0) { 
        printf("Child Process\n");

        char * const argv[] = {"ls", "-1", NULL};
        char * const envp[] = {NULL};

        execl("/bin/ls", "ls", "-1", NULL);           // Executes "/bin/ls" with arguments
        //execlp("ls", "ls", "-1", NULL);             // Searches for "ls" in PATH and executes it
        //execle("/bin/ls", "ls", "-1", NULL, envp);  // Executes "/bin/ls" with environment variables
        //execvp("ls", argv);                         // Searches for "ls" in PATH, uses argument vector
        //execvpe("ls", argv, envp);                  // Searches for "ls" in PATH, uses argument vector and env variables
        //execv("/bin/ls", argv);                     // Executes "/bin/ls" with argument vector
        
        fprintf(stderr, "ERROR: exec failed!\n");
        exit(1); 
    }
    else if (pid > 0) { 
        wait(NULL); 
        printf("Parent Process: Child finished.\n");
    }
    else { // Fork failed
        fprintf(stderr, "ERROR: Fork Failed!\n");
        exit(1); 
    }
    return 0;
}
