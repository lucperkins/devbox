ARG ubuntuVersion

FROM ubuntu:${ubuntuVersion}

LABEL maintainer="lucperkins@gmail.com"

RUN apt-get update

RUN apt-get install -y \
    apt-transport-https \
    build-essential \
    curl \
    gnupg2 \
    git \
    openssl \
    vim \
    wget
