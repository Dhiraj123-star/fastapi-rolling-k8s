#!/bin/bash

VERSION=v2
IMAGE=dhiraj918106/fastapi-rolling:$VERSION

echo "📦 Building image: $IMAGE"
docker build -t $IMAGE .

echo "📤 Pushing image to Docker Hub..."
docker push $IMAGE

echo "🚀 Rolling update in Kubernetes..."
kubectl set image deployment/fastapi-deployment fastapi=$IMAGE
