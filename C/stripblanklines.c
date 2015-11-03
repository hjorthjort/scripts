#include <stdio.h>
#include <string.h>

#define IN 1
#define OUT 0
#define MAXLEN 32000

int getnextline(char ret[]);

int main () {
    char ret[MAXLEN];
    while (getnextline(ret) != -1) {
        if (strlen(ret) > 0)
            printf("%s\n", ret);
    }
    return 0;
}

int getnextline(char ret[]) {
    char c;
    int i = 0;
    while ((c = getchar()) != '\n') {
        if (c == EOF) {
            return -1;
        }
        ret[i] = c;
        i++;
    }
    ret[i] = '\0';
    return 0;
}
