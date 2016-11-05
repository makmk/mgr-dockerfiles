FROM registry.docker.kosmala.work/jdk:java8
MAINTAINER Marek Kosmala <mkmarek91@gmail.com>

RUN apk add --no-cache openssh openrc && rc-update add sshd
