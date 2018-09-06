#!/bin/sh

# Compile .c files to .o files
gcc -c square.c quad.c

# Bind object files to library (.a file)
ar r libtest.a square.o quad.o

# Link main.c to library to create an executable
# Note that main.c still needs to include quad.h (a library header)
gcc main.c libtest.a
