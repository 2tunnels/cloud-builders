#!/usr/bin/env bash

set -eu

ROOT_DIR=$(pwd)
DATE=$(date +%Y.%m.%d)
IMAGES="python-3.6-slim-buster python-3.9-slim-buster node-10.24-slim-buster"

for IMAGE in $IMAGES
do
	cd "$IMAGE"
    docker image build -t cloud-builder-${IMAGE} .
    docker image tag cloud-builder-${IMAGE} 2tunnels/cloud-builder-${IMAGE}:${DATE}
    docker image tag cloud-builder-${IMAGE} 2tunnels/cloud-builder-${IMAGE}:latest
    docker image push 2tunnels/cloud-builder-${IMAGE}:${DATE}
    docker image push 2tunnels/cloud-builder-${IMAGE}:latest
    cd "$ROOT_DIR"
done
