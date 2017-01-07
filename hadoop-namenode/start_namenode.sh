#/bin/bash

"$HADOOP_HOME/bin/hdfs" namenode -format "$cluster_name"
"$HADOOP_HOME/bin/hdfs" namenode
