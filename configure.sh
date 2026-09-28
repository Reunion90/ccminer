#!/bin/bash

ARCH="-march=armv8-a+crypto+sha2+crc"
TUNE="-mtune=cortex-a73"

OPTI="-O3 \
-ffinite-loops \
-ffast-math \
-fstrict-aliasing \
-ftree-vectorize \
-funroll-loops \
-finline-functions \
-fomit-frame-pointer \
-fno-stack-protector \
-fpic \
-pthread \
-flto \
-D_REENTRANT"

./configure \
    CFLAGS="$ARCH $TUNE $OPTI" \
    CXXFLAGS="$ARCH $TUNE $OPTI" \
    CXX=clang++ \
    CC=clang \
    LDFLAGS="-flto -fuse-ld=lld"
