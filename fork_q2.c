#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

int main() {
    FILE* fp = fopen("text.txt", "a");

    if (fp == NULL) {
        printf("Error opening file\n");
        return 1;
    }

    pid_t pid = fork();

    if (pid < 0) {
        printf("Fork failed!\n");
        return 1;
    } else if (pid == 0) {
        fprintf(fp, "Child writing\n");
    } else {
        fprintf(fp, "Parent writing\n");
    }

    fclose(fp);
    return 0;
}