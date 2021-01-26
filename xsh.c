#include <stdlib.h>
#include <string.h>

#define MAX_PATH 256

int main(int argc, const char **argv) {
    const char *exe = *argv;
    const char *ext = strchr(exe, '.');

    char bat[MAX_PATH] = "\"";
    strncat_s(bat, MAX_PATH, exe     , ext - exe);
    strncat_s(bat, MAX_PATH, ".bat\"", MAX_PATH );

    int code = system(bat);
    if (code != 0) {
        system("pause");
    }
}
