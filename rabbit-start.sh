#!/usr/bin/env bash

CONTAINER_NAME=rabbit-docker
HOST_NAME=pandi
RABBITMQ_DEFAULT_USER=rabbit
RABBITMQ_DEFAULT_PASSWD=docker

echo "Going to start $CONTAINER_NAME"
docker run -d --rm --name "$CONTAINER_NAME" \
           --hostname "$HOST_NAME" \
           -e RABBITMQ_DEFAULT_VHOST="$HOST_NAME" \
           -e RABBITMQ_DEFAULT_USER="$RABBITMQ_DEFAULT_USER" \
           -e RABBITMQ_DEFAULT_PASS="$RABBITMQ_DEFAULT_PASSWD" \
           -p 15672:15672 \
           -v "$HOME"/common/docker/volumes/rabbit:/var/lib/rabbitmq \
           rabbitmq:management

echo "Login at http://0.0.0.0:15672"
