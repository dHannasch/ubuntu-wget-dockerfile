FROM ubuntu:rolling

RUN apt-get update \
    && apt-get install --assume-yes --no-install-recommends wget \
    && apt-get install --assume-yes ca-certificates
