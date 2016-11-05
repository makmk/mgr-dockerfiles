FROM registry.docker.kosmala.work/alpine/alpine
MAINTAINER Marek Kosmala <mkmarek91@gmail.com>

ENV JAVA_VERSION=8u92  \
    JAVA_ALPINE_VERSION=8.92.14-r1 \
    JAVA_PACKAGE=server-jre \
    JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre \
    PATH=${PATH}:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin \
    LANG=C.UTF-8

# about nsswitch.conf - see https://registry.hub.docker.com/u/frolvlad/alpine-oraclejdk8/dockerfile/

RUN apk add --update --no-cache ca-certificates && \
    apk add --no-cache openjdk8-jre="$JAVA_ALPINE_VERSION"

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/urandom"]
