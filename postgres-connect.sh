#!/usr/bin/env bash

CONTAINER_NAME=my-postgres
POSTGRES_PASSWORD=docker

echo "Going to connnect to $CONTAINER_NAME"
export PGPASSWORD=$POSTGRES_PASSWORD

psql --host localhost \
      --username postgres \
      --port 5432 \

