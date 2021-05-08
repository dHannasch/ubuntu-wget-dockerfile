FROM dahanna/ubuntu:wget

ARG RAY_UID=1000
ARG RAY_GID=100

# https://github.com/ray-project/ray/blob/master/docker/base-deps/Dockerfile
# RUN addgroup --gid $RAY_GID ray
RUN useradd --create-home ray --uid $RAY_UID --gid $RAY_GID
USER $RAY_UID

