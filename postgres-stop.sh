#!/usr/bin/env bash

CONTAINER_NAME=my-postgres

echo "Going to stop containers $CONTAINER_NAME"
docker stop "$CONTAINER_NAME"
echo "Stopped."

