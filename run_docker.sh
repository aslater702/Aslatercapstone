#!/usr/bin/env bash

## shell file that runs docker locally

# Step 1:
# Builds docker image and tags with project tag
# docker build --tag=aslatercap:${UPDATE} .
docker build --tag=aslatercap:${UPDATE} --tag=aslatercap:latest .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
# add -d  before -p for circleci
docker run -d -p 8000:80 aslatercap:${UPDATE}