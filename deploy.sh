#!/bin/bash
set -e

export IMAGE_NAME=<your-dockerhub-username>/dev:latest

echo "Deploying container with image: ..."
docker compose down || true
docker compose pull
docker compose up -d
echo "Application successfully deployed on port 80!"
