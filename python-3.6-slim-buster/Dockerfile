FROM python:3.6-slim-buster

ENV PIP_VERSION=21.2.1
ENV SETUPTOOLS_VERSION=57.4.0
ENV POETRY_VERSION=1.1.7

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends git ssh && \
    rm -rf /var/lib/apt/lists/*

RUN pip install -U pip==$PIP_VERSION setuptools==$SETUPTOOLS_VERSION poetry==$POETRY_VERSION
