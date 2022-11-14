#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=huuthang2509/udacity-ml-microservice:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-ml-microservice --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get po

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-ml-microservice 8000:80
