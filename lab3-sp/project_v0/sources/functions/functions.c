#define _XOPEN_SOURCE 1
#include <sys/stat.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <limits.h>
#include <errno.h>


#include "functions.h"
#include "hidden_functions/hidden_functions.h"

int parse_options(int            argc,
                  char * const * argv,
                  char ** __restrict in,
                  char ** __restrict out) {
    for (int32_t i = 0; i < argc; i++) {
        const int option = getopt(argc, argv, "i:o:");
        switch (option) {
            case -1:
                /* No more options */
                i = INT32_MAX - 1;
                break;
            case (int) 'i':
                /* Input file */
                *in = (char *) malloc(sizeof(char) * strlen(optarg));
                (void) strcpy(*in, optarg);
                i++;
                break;
            case (int) 'o':
                /* Output file */
                *out = (char *) malloc(sizeof(char) * strlen(optarg));
                (void) strcpy(*out, optarg);
                i++;
                break;
            case (int) '?':
                /* Ambiguous or unknown */
                (void) fprintf(stderr, "Unknown or ambiguous value.\n");
                return EXIT_FAILURE;

            default:
                /* Unexpected error */
                (void) fprintf(stderr, "An unexpected error occured.\n");
                return EXIT_FAILURE;
        }
    }

    return EXIT_SUCCESS;
}
int is_symlink(const char *path) {
    struct stat path_stat;
    if (lstat(path, &path_stat) == -1) {
        perror("lstat");
        return -1; // Error occurred
    }
    return S_ISLNK(path_stat.st_mode); // Returns 1 if symlink, 0 otherwise
}

int is_invalid_symlink(const char *path) {
    char resolved_path[PATH_MAX];
    if (!realpath(path, resolved_path)) {
        perror("realpath");
        return 1; // Error or unable to resolve
    }

    // List of restricted directories
    const char *restricted_dirs[] = {"/etc", "/root"};
    const size_t num_restricted_dirs = sizeof(restricted_dirs) / sizeof(restricted_dirs[0]);

    // Check if the resolved path starts with a restricted directory
    for (size_t i = 0; i < num_restricted_dirs; ++i) {
        if (strncmp(resolved_path, restricted_dirs[i], strlen(restricted_dirs[i])) == 0) {
            fprintf(stderr, "Error: Symbolic links to %s are not allowed.\n", restricted_dirs[i]);
            return 1; // Invalid symlink to a restricted directory
        }
    }

    return 0; // Valid path
}

int secure_copy_file(const char * in, const char * out) {
    int error = 0;

    if (is_symlink(in) && is_invalid_symlink(in)) {
        fprintf(stderr, "Symbolic links to restricted directories are not allowed.\n");
        return EXIT_FAILURE;
    }

    // Check if the output is a symbolic link pointing to a restricted directory
    if (is_symlink(out) && is_invalid_symlink(out)) {
        fprintf(stderr, "Symbolic links to restricted directories are not allowed.\n");
        return EXIT_FAILURE;
    }
    error     = access(in, R_OK);
    if (!error) {
        error = access(out, W_OK);
        if (!error) {
            error = wait_confirmation(in, out);
            copy_file(in, out);
        } else {
            fprintf(stderr, "File %s cannot be written.\n", out);
        }
    } else {
        fprintf(stderr, "File %s cannot be read.\n", in);
    }

    return error;
}