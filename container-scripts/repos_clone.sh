#!/bin/bash

# Downloading source code
# Leptonica
# RUN git ls-remote ${LEP_REPO_URL} HEAD
git clone ${LEP_REPO_URL} ${LEP_SRC_DIR}
# Tesseract
# RUN git ls-remote ${TES_REPO_URL} HEAD
git clone ${TES_REPO_URL} ${TES_SRC_DIR}

