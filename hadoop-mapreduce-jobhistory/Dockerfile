FROM registry.docker.kosmala.work/hadoop/hadoop-base

RUN mkdir -p "$HADOOP_HOME/logs"
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["$HADOOP_HOME/bin/mapred historyserver"]
