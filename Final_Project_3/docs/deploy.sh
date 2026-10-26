#!/bin/bash
export DOCKER_IMAGE_TAG=$1
docker compose down
docker compose up -d

