#!/usr/bin/env bash

CONTAINER_NAME=mongo-docker
MONGO_INITDB_ROOT_USERNAME=mongoadmin
MONGO_INITDB_ROOT_PASSWORD=docker

echo "Going to start $CONTAINER_NAME"
docker run -d --rm --name "$CONTAINER_NAME" \
           -e MONGO_INITDB_ROOT_USERNAME="$MONGO_INITDB_ROOT_USERNAME" \
           -e MONGO_INITDB_ROOT_PASSWORD="$MONGO_INITDB_ROOT_PASSWORD" \
           -p 27017:27017 \
           -v "$HOME"/common/docker/volumes/postgres:/data/db \
           mongo
