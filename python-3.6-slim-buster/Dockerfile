FROM python:3.6-slim-buster

ENV PIP_VERSION=21.3.1
ENV SETUPTOOLS_VERSION=57.5.0
ENV POETRY_VERSION=1.1.11
ENV DOCKER_COMPOSE_VERSION=1.29.2

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
        curl \
        dnsutils \
        git \
        iputils-ping \
        make \
        postgresql-client \
        procps \
        ssh \
        && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir --upgrade pip==$PIP_VERSION setuptools==$SETUPTOOLS_VERSION poetry==$POETRY_VERSION

RUN curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-Linux-x86_64" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
