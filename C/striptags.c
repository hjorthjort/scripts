/* Naive implementation of stripping xml and HTML tags. Can't tell tags in strings apart from real tags*/

#include <stdio.h>
#include <string.h>

#define IN 1
#define OUT 0
#define MAXLEN 32000

void stripline(char line[]);
void arraycopy(char from[], char to[]);
int getnextline(char ret[]);

int main () {
    char ret[MAXLEN];
    while (getnextline(ret) != -1) {
        stripline(ret);
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

void stripline(char line[]) {
    char c;
    int inTag;
    char save[MAXLEN];
    int i = 0;
    for (int j = 0; j < strlen(line); j++) {
        c = line[j];
        if (c == '<') {
            inTag = IN;
        }
        if (!inTag) {
            save[i] = c;
            i++;
        }
        if (c == '>') {
            inTag = OUT;
        }
    }
    save[i] = '\0';
    arraycopy(save, line);
}

void arraycopy(char from[], char to[]) {
    //Empty the to-array
    unsigned long len = strlen(to);
    for (int i = 0; i < len; i++) 
        to[i] = '\0';
    for (int i = 0; i < strlen(from); i++)
        to[i] = from[i];
}
