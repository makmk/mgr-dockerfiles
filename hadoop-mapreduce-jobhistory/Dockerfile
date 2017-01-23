FROM registry.docker.kosmala.work/hadoop/hadoop-base

COPY test_job.sh "$HADOOP_HOME/bin/"
COPY WordCount.java "$HADOOP_HOME/"
COPY input "$HADOOP_HOME/"
RUN mkdir -p "$HADOOP_HOME/logs" && mkdir /logs && chmod a+x "$HADOOP_HOME/bin/test_job.sh"
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["$HADOOP_HOME/bin/mapred historyserver"]
