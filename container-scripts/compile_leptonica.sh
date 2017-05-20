#!/bin/bash

# Compilation Leptonica
cd ${LEP_SRC_DIR}
autoreconf -vi && ./autobuild && ./configure
make && make install
