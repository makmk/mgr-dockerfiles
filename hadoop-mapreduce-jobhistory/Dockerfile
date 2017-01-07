FROM registry.docker.kosmala.work/hadoop/hadoop-base

RUN mkdir -p "$HADOOP_HOME/mr-history/tmp" && mkdir -p "$HADOOP_HOME/mr-history/done"
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["$HADOOP_HOME/bin/yarn", "nodemanager"]
