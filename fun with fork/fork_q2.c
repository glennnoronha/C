#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>

int main() {
    int fd = open("output.txt",  | O_CREAT | O_TRUNC);
    if (fd < 0) {
        perror("Failed to open the file");
        exit(1);
    }

    pid_t pid = fork();

    if (pid < 0) {
        perror("fork() failed");
        exit(1);
    } else if (pid == 0) {
        printf("Child process writing...\n");
        for (int i = 0; i < 5; i++) {
            if (write(fd, "Child writing...\n", 17) != 17) {
                perror("Write error in child process");
            }
        }
    } else {
        printf("Parent process writing...\n");
        for (int i = 0; i < 5; i++) {
            if (write(fd, "Parent writing...\n", 18) != 18) {
                perror("Write error in parent process");
            }
        }
    }

    close(fd);
    return 0;
}
