#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=aslater702/aslatercap:${UPDATE}
 
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username aslater702 --password ${DOCKER_PASSWORD}
docker tag aslatercap:latest
docker tag aslatercap $dockerpath


# Push image to a docker repository
docker push $dockerpath
docker push aslatercap:latest
