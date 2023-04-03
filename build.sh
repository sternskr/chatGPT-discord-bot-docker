#!/bin/bash

# Set the Docker Hub username and image name
DOCKER_USERNAME=<your-docker-username>
IMAGE_NAME=chatgpt-bot

# Build the Docker image
docker build -t $DOCKER_USERNAME/$IMAGE_NAME .

# Tag the Docker image with the version number
VERSION=1.0.0 # Replace with your desired version number
docker tag $DOCKER_USERNAME/$IMAGE_NAME $DOCKER_USERNAME/$IMAGE_NAME:$VERSION

# Login to Docker Hub
docker login -u $DOCKER_USERNAME

# Push the Docker image to Docker Hub
docker push $DOCKER_USERNAME/$IMAGE_NAME
docker push $DOCKER_USERNAME/$IMAGE_NAME:$VERSION
