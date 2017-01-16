FROM registry.docker.kosmala.work/hadoop/hadoop-base

RUN mkdir "$HADOOP_HOME/data"
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["$HADOOP_HOME/bin/hdfs datanode"]
