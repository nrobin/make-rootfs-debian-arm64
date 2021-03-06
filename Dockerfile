FROM debian:jessie
RUN apt-get update
RUN apt-get install -y \
    qemu \
    qemu-user-static \
    binfmt-support \
    debootstrap \
    debian-ports-archive-keyring \
    --no-install-recommends

RUN mkdir /data
WORKDIR /data
COPY build.sh /
