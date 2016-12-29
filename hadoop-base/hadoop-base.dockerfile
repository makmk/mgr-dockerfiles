FROM registry.docker.kosmala.work/jdk:java8
MAINTAINER Marek Kosmala <mkmarek91@gmail.com>

RUN sed -i -e 's/v3\.4/edge/g' /etc/apk/repositories && \
    apk --update add --no-cache openssh openrc bzip2 bash \
    jansson jansson-dev \
    maven \
    cmake \
    zlib \
    openssl \
    openssl-dev \
    fuse fuse-dev && \
    rc-update add sshd && \
    mkdir /hadoop-source

RUN wget https://s3.eu-central-1.amazonaws.com/mgr-tools/utils/protobuf-alpine/protobuf-2.5.0-r1.apk && \
    wget https://s3.eu-central-1.amazonaws.com/mgr-tools/utils/hadoop-alpine-2.7.3/hadoop-2.7.3-r0.apk && \
    apk add --no-cache protobuf-2.5.0-r1.apk hadoop-2.7.3-r0.apk --allow-untrusted && \
    rm protobuf-2.5.0-r1.apk hadoop-2.7.3-r0.apk
    
WORKDIR /hadoop-source
