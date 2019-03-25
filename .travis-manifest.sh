#!/bin/sh
if [ "$TRAVIS_EVENT_TYPE" != "pull_request" ] &&
   [ "$TRAVIS_BRANCH" = "master" ]; then
     mkdir -p ~/.docker
     echo '{ "experimental" : "enabled" }' > ~/.docker/config.json
     echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
     docker manifest create --amend "${REPO}:${RELEASE}" "${REPO}:${RELEASE}_x86_64" "${REPO}:${RELEASE}_ppc64le"
     docker manifest inspect "${REPO}:${RELEASE}"
     docker manifest push    "${REPO}:${RELEASE}"
fi
