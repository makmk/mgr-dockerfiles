FROM registry.docker.kosmala.work/alpine/alpine
MAINTAINER Marek Kosmala <mkmarek91@gmail.com>

ENV JAVA_VERSION=8u92  \
    JAVA_ALPINE_VERSION=8.111.14-r0 \
    JAVA_PACKAGE=server-jre \
    JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/ \
    PATH=${PATH}:${JAVA_HOME}/bin/ \
    LANG=C.UTF-8

# about nsswitch.conf - see https://registry.hub.docker.com/u/frolvlad/alpine-oraclejdk8/dockerfile/

RUN apk add --update --no-cache ca-certificates && \
    apk add --no-cache openjdk8-jre="$JAVA_ALPINE_VERSION"

CMD ["java", "-Djava.security.egd=file:/dev/urandom"]
