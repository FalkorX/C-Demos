#!/bin/sh

# Compile all .c files to .o files (object files)
gcc -c *.c

# Link all .o files to an executable
gcc *.o
