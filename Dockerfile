FROM ubuntu:devel

RUN apt-get update && apt-get install --assume-yes --no-install-recommends wget
