#! /usr/bin/env bash

VERSION=6.9.4
IMAGE=quay.io/ipfs/js-base

FULL_IMAGE_NAME="$IMAGE:$VERSION"

docker build -t $FULL_IMAGE_NAME .
docker push $FULL_IMAGE_NAME
