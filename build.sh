#!/bin/bash
set -e 

IMAGE_REPO=<your-dockerhub-username>/dev
IMAGE_TAG=latest

echo "Building Docker image: :..."
docker build -t : .
echo "Build complete!"

