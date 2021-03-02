#!/bin/bash

IMAGE_NAME="kamitanilab/caffe-cuda11"

docker build -t ${IMAGE_NAME}:1.0-$(date +%Y%m%d) .
docker tag ${IMAGE_NAME}:1.0-$(date +%Y%m%d) ${IMAGE_NAME}:latest

