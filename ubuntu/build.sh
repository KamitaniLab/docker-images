#!/bin/bash

docker build -t kamitanilab/ubuntu:20.04-$(date +%Y%m%d) .
docker tag kamitanilab/ubuntu:20.04-$(date +%Y%m%d) kamitanilab/ubuntu:latest

