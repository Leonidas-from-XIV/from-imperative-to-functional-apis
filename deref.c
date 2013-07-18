#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]) {
    if (argc > 1) {
      void* mem = malloc(2);
      free(mem);
      free(mem);
    } else {
      char *s = "hello world";
      *s = 'H';
    }
    return 0;
}
