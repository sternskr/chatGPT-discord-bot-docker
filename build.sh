#!/bin/bash

# Set the Docker Hub username and image name
DOCKER_USERNAME=sternskr
IMAGE_NAME=chatgpt-discord-bot
VERSION_VAL=latest

# Build the Docker image
echo "Building docker image"
docker build -t $IMAGE_NAME .

# Tag the Docker image with the VERSION_VAL number
echo "Tagging docker image"
docker tag $IMAGE_NAME $DOCKER_USERNAME/$IMAGE_NAME:$VERSION_VAL

# Push the Docker image to Docker Hub
echo "Pushing docker image"
docker push $DOCKER_USERNAME/$IMAGE_NAME:$VERSION_VAL
