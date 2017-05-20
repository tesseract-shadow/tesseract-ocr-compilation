#!/bin/bash

# Compilation Tesseract
cd ${TES_SRC_DIR}
./autogen.sh && ./configure
LDFLAGS="-L/usr/local/lib" CFLAGS="-I/usr/local/include" make
make
make install && ldconfig
make training && make training-install
