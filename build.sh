#!/bin/sh

set -e

# install dependencies
# https://github.com/googleapis/python-crc32c/issues/83#issuecomment-910515271
apk add --no-cache cmake g++ gcc git make musl-dev

git clone https://github.com/google/crc32c
cd crc32c
git submodule update --init --recursive
mkdir build
cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCRC32C_BUILD_TESTS=no \
    -DCRC32C_BUILD_BENCHMARKS=no \
    -DBUILD_SHARED_LIBS=yes \
    ..
make all install

# build
pip wheel --no-deps --requirement requirements.txt
