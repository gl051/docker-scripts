#!/usr/bin/env bash

CONTAINER_NAME=my-postgres
POSTGRES_PASSWORD=docker

# postgres version needs to be specified in order to map the volume.
# otherwise you will get an error like: 
# DETAIL:  The data directory was initialized by PostgreSQL version 11, which is not compatible with this version 12.0 (Debian 12.0-2.pgdg100+1)

echo "Going to start container $CONTAINER_NAME"
docker run -d --rm --name "$CONTAINER_NAME" \
           -e POSTGRES_PASSWORD="$POSTGRES_PASSWORD" \
           -p 5432:5432 \
           -v "$HOME"/.docker/volumes/postgres:/var/lib/postgresql/data \
           postgres:12.3
echo "Started."


