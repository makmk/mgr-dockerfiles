FROM registry.docker.kosmala.work/hadoop/hadoop-base

RUN mkdir "$HADOOP_HOME/local" && mkdir "$HADOOP_HOME/logs"
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["$HADOOP_HOME/bin/yarn nodemanager"]
