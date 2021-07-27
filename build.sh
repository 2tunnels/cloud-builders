#!/usr/bin/env bash

set -eu

ROOT_DIR=$(pwd)

cd python-3.6-slim-buster/
docker image build -t 2tunnels/cloud-builder-python-3.6-slim-buster .
docker image push 2tunnels/cloud-builder-python-3.6-slim-buster
cd "$ROOT_DIR"
