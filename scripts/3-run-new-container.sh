#!/bin/bash

docker run -d -p 4022:22 --name t4cmp tesseractshadow/tesseract4cmp
docker ps