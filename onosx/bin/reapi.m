//remove file to the trash.

#import <Cocoa/Cocoa.h>

int main(int argc, const char *argv[]) {
    if (argc == 1) {
        return 0;
    }

    NSMutableArray *files = [NSMutableArray array];
    for (int it = 1; it < argc; ++it) {
        NSURL *url = [NSURL fileURLWithPath:@(argv[it])];
        [files addObject:url];
    }

    NSWorkspace *workspace = [NSWorkspace sharedWorkspace];
    [workspace recycleURLs:files completionHandler:^(NSDictionary *urls, NSError *error) {
        if (error) {
            printf("%s\n", error.localizedDescription.UTF8String);
        }
        exit(0);
    }];

    [[NSRunLoop currentRunLoop] run];
    return 0;
}
