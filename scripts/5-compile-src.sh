#!/bin/bash

docker exec -it t4cmp sh scripts/compile_leptonica.sh && \
docker exec -it t4cmp sh scripts/compile_tesseract.sh && \
docker exec -it t4cmp tesseract \-v
