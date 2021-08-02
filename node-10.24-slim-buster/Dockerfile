FROM node:10.24-buster-slim

ENV NPM_VERSION=7.20.3
ENV YARN_VERSION=1.22.11
ENV PHANTOMJS_PREBUILT_VERSION=2.1.16

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends bzip2 git ssh libfontconfig && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g npm@${NPM_VERSION}

RUN npm install -g --force \
    yarn@${YARN_VERSION} \
    phantomjs-prebuilt@${PHANTOMJS_PREBUILT_VERSION}
