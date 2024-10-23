#include <stdio.h>
#include <unistd.h>

void main(int argc, char *argv[]) {
    for (int i = 0; i < 4; i++) {
        int ret = fork();
        if (ret == 0) {
            printf("child %d\n", i);
        }
    }
}
