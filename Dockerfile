FROM ubuntu:latest

RUN apt-get update \
    && apt-get install --assume-yes --no-install-recommends wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
