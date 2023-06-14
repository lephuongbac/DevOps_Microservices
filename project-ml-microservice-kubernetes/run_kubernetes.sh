#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
docker_path=coderz/ml-api:latest
# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy ml-api --image="$docker_path"

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/ml-api 8000:80
