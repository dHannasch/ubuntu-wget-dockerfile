FROM ubuntu:devel

ARG RAY_UID=1000
ARG RAY_GID=100

RUN apt-get update && apt-get install --assume-yes --no-install-recommends wget
# Without gpgv, apt-get update behind proxy will fail with "gpgv required for verification"?
RUN apt-get update && apt-get install --assume-yes gpgv

# https://github.com/ray-project/ray/blob/master/docker/base-deps/Dockerfile
# RUN addgroup --gid $RAY_GID ray
RUN useradd --create-home ray --uid $RAY_UID --gid $RAY_GID
USER $RAY_UID

