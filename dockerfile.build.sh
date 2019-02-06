#!/bin/bash
docker build ${RELEASE:+--build-arg=RELEASE=${RELEASE}} -t tesseractshadow/tesseract4cmp ./
docker images
