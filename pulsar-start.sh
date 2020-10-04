#!/usr/bin/env bash

CONTAINER_NAME=pulsar-docker

echo "Going to start $CONTAINER_NAME"
docker run -d --rm --name "$CONTAINER_NAME" \
           -p 6650:6650 \
           -p 8080:8080 \
           -v "$HOME"/common/docker/volumes/pulsar:/pulsar/data \
           apachepulsar/pulsar \
           bin/pulsar standalone
