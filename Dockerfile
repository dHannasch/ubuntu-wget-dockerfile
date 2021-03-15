FROM ubuntu:devel

RUN apt-get update && apt-get install --assume-yes --no-install-recommends wget
# Without gpgv, apt-get update behind proxy will fail with "gpgv required for verification"?
RUN apt-get update && apt-get install --assume-yes gpgv
