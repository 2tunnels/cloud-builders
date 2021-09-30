FROM node:10.24-buster-slim

ENV NPM_VERSION=7.24.1
ENV YARN_VERSION=1.22.15
ENV PHANTOMJS_PREBUILT_VERSION=2.1.16

# Get latest Google Chrome version from: https://www.ubuntuupdates.org/package/google_chrome/stable/main/base/google-chrome-stable
ENV CHROME_VERSION=94.0.4606.61-1

# Install Google Chrome, PhantomJS and general CI dependencies
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
        bzip2 \
        ca-certificates \
        fonts-liberation \
        git \
        libappindicator3-1 \
        libasound2 \
        libatk-bridge2.0-0 \
        libatk1.0-0 \
        libc6 \
        libcairo2 \
        libcups2 \
        libdbus-1-3 \
        libexpat1 \
        libfontconfig1 \
        libgbm1 \
        libgcc1 \
        libglib2.0-0 \
        libgtk-3-0 \
        libnspr4 \
        libnss3 \
        libpango-1.0-0 \
        libpangocairo-1.0-0 \
        libstdc++6 \
        libx11-6 \
        libx11-xcb1 \
        libxcb1 \
        libxcomposite1 \
        libxcursor1 \
        libxdamage1 \
        libxext6 \
        libxfixes3 \
        libxi6 \
        libxrandr2 \
        libxrender1 \
        libxshmfence1 \
        libxss1 \
        libxtst6 \
        lsb-release \
        ssh \
        wget \
        xdg-utils \
        && \
    rm -rf /var/lib/apt/lists/*

# Install Google Chrome
RUN wget -O chrome.deb https://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_${CHROME_VERSION}_amd64.deb && \
    apt-get install ./chrome.deb && \
    rm ./chrome.deb

# Configure Google Chrome path for Karma
ENV CHROME_BIN /usr/bin/google-chrome

RUN npm install -g npm@${NPM_VERSION}
RUN npm install -g --force \
    yarn@${YARN_VERSION} \
    phantomjs-prebuilt@${PHANTOMJS_PREBUILT_VERSION}
