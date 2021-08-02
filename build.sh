#!/usr/bin/env bash

set -eu

ROOT_DIR=$(pwd)
IMAGES="python-3.6-slim-buster node-10.24-slim-buster"

for IMAGE in $IMAGES
do
	cd "$IMAGE"
    docker image build -t 2tunnels/cloud-builder-${IMAGE} .
    docker image push 2tunnels/cloud-builder-${IMAGE}
    cd "$ROOT_DIR"
done
