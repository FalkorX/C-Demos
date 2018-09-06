#!/bin/sh

# Build square library
gcc -c square.c
ar r libsquare.a square.o

# Build quad library
gcc -c quad.c
ar r libquad.a quad.o

# Link main.c to both libraries to create an executable
# This fails because the order of the libraries is wrong!
# libquad.a depends on libsquare.a (uses a function from it)
# So libquad has to be listed before libsquare.
echo 'This build throws an error:'
echo gcc main.c libsquare.a libquad.a
echo
gcc main.c libsquare.a libquad.a
echo
echo '------'
echo 'This build succeeds:'
echo gcc main.c libquad.a libsquare.a
echo
gcc main.c libquad.a libsquare.a
echo
