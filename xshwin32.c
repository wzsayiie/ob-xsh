#include <stdlib.h>
#include <string.h>

//maximum length of single path on windows.
#define MAX_PATH 260

int main(int argc, const char *argv[]) {

    const char *app = *argv;
    const char *ext = strrchr(app, '.');

    char bat[MAX_PATH] = "\"";
    strncat(bat, app, ext - app);
    strcat(bat, ".bat\"");

    if (system(bat) != 0) {
        system("pause");
    }
}
