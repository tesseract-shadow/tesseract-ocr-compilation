#!/bin/bash

docker exec -it t4cmp sh ./scripts/build_deb_pkg.sh
mkdir ./pkg/
rm ./pkg/*
docker cp t4cmp:/home/pkg/ ./
echo "Check ./pkg directory"
