#!/usr/bin/env bash

CONTAINER_NAME=mongo-docker

echo "Going to stop $CONTAINER_NAME"
docker stop "$CONTAINER_NAME"
