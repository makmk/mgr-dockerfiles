FROM registry.docker.kosmala.work/hadoop/hadoop-base

ENV cluster_name docker-cluster
ENV JAVA_OPTS="-Djava.net.preferIPv4Stack=true"
RUN mkdir "$HADOOP_HOME/workspace"
COPY start_namenode.sh "$HADOOP_HOME/bin/"
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["$HADOOP_HOME/bin/start_namenode.sh"]
