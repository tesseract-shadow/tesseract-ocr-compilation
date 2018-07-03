#!/bin/bash

# Compilation Leptonica
cd ${LEP_SRC_DIR}
autoreconf -vi && ./autogen.sh && ./configure
make && make install
