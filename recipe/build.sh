#!/bin/bash

set -e -o pipefail

# GCC 15 defaults to C23, which breaks screen's configure and make steps
export CFLAGS="${CFLAGS} -std=gnu17"
./configure --prefix=${PREFIX}
make -j${CPU_COUNT} install
