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

ENV HADOOP_HOME "/hadoop"
ENV HADOOP_CLASSPATH "${JAVA_HOME}/lib/tools.jar"
ENV JAVA_OPTS="${JAVA_OPTS} -Djava.net.preferIPv4Stack=true"
ENV PATH "${PATH}:${HADOOP_HOME}/bin/:${JAVA_HOME}/bin/"
#ENV HADOOP_CLASSPATH="${JAVA_HOME}/lib/tools.jar"
#ENV HADOOP_OPTS="$HADOOP_OPTS -Djava.library.path=$HADOOP_HOME/usr/local/hadoop/lib/native"
COPY core-site.xml "$HADOOP_HOME/etc/hadoop/"
COPY hdfs-site.xml "$HADOOP_HOME/etc/hadoop/"
COPY yarn-site.xml "$HADOOP_HOME/etc/hadoop/"
COPY mapred-site.xml "$HADOOP_HOME/etc/hadoop/"
COPY capacity-scheduler.xml "$HADOOP_HOME/etc/hadoop/"

    
WORKDIR ${HADOOP_HOME}
