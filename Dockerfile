FROM alpine:latest

MAINTAINER Gwenn Etourneau <gwenn.etourneau@gmail.com>

RUN apk upgrade
RUN apk add --update \
    bash \
    git \
    tar \
    openssh-client \
    openssh \
    zip \
    ruby \
    ruby-bundler \
    build-base \
    ruby-dev \
    python py-pip && \
    pip install --trusted-host pypi.python.org awscli && \
    gem install json --no-rdoc --no-ri && \
    apk --purge -v del \
    py-pip \
    build-base ruby-dev && \
    rm /var/cache/apk/*

