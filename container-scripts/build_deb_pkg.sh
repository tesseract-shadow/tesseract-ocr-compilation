#!/bin/bash

# build the new leptonica debian package
cd ${LEP_SRC_DIR}
checkinstall -D --install=no -y --pakdir=${PKG_DIR} --pkgname=leptonica-latest

# build the new tesseract debian package
cd ${TES_SRC_DIR}
checkinstall -D --install=no -y --pakdir=${PKG_DIR} --pkgname=tesseract-latest

ldconfig

