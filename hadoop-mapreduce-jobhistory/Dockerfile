FROM registry.docker.kosmala.work/hadoop/hadoop-base

COPY test_job.sh "$HADOOP_HOME/bin/"
RUN mkdir -p "$HADOOP_HOME/logs" && mkdir /logs && chmod a+x "$HADOOP_HOME/bin/test_job.sh"
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["$HADOOP_HOME/bin/mapred historyserver"]
