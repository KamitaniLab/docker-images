#!/bin/bash

IMAGE_NAME="kamitanilab/caffe-deepsim-cuda11"

cp Dockerfile_caffe-deepsim Dockerfile
docker build -t ${IMAGE_NAME}:$(date +%Y%m%d) .
docker tag ${IMAGE_NAME}:$(date +%Y%m%d) ${IMAGE_NAME}:latest

