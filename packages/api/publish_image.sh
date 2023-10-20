#!/bin/sh

DIR=$(pwd)
set +e

AWS_PROFILE="billing_test"
AWS_REGION="cn-north-1"
ECR_REPOSITORY="cloudcarbonfootprint/api"
ECR_REGISTRY="182166204028.dkr.ecr.$AWS_REGION.amazonaws.com.cn"
IMAGE_TAG=amd64-latest
PLATFORM=linux/amd64

IMAGE=$ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG

# docker build -t cloudcarbonfootprint/api .
aws sts get-caller-identity --profile $AWS_PROFILE >/dev/null

# Build image that is compatible with linux/arm64
docker buildx build --push  --platform $PLATFORM -t $IMAGE .

#Publish image to ECR
aws ecr get-login-password \
    --region $AWS_REGION \
    --profile $AWS_PROFILE |
    docker login --username AWS --password-stdin $ECR_REGISTRY

docker push $IMAGE