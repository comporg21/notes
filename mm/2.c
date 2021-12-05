//first allocate, and use later

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define N       9500

int main (void) {
        int i, n = 0;
        char *pp[N];

        for (n = 0; n < N; n++) {
                pp[n] = malloc(1<<20);
                if (pp[n] == NULL)
                        break;
        }
        printf("malloc failure after %d MiB\n", n);

        for (i = 0; i < n; i++) {
                memset (pp[i], 0, (1<<20));
                printf("%d\n", i+1);
        }

        return 0;
}

