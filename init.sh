#!/bin/bash

BASE_DOCKERFILE="Dockerfile"
DEST_LOC=$1

echo "Copying Docker template to '${DEST_LOC}'..."

cp -v $BASE_DOCKERFILE $DEST_LOC

echo "Copied!"
