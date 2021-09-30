FROM python:3.9-slim-buster

ENV PIP_VERSION=21.2.4
ENV SETUPTOOLS_VERSION=57.5.0
ENV POETRY_VERSION=1.1.10

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends git ssh make && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir --upgrade pip==$PIP_VERSION setuptools==$SETUPTOOLS_VERSION poetry==$POETRY_VERSION
