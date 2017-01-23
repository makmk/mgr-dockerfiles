#! /bin/bash

set -e
cd "$HADOOP_HOME"
hadoop com.sun.tools.javac.Main "$HADOOP_HOME/WordCount.java"
jar cf "$HADOOP_HOME/wc.jar" WordCount*.class
hdfs dfs -mkdir -p /user/root
hdfs dfs -put "$HADOOP_HOME/input" /user/root/input
yarn jar "$HADOOP_HOME/wc.jar" WordCount "/user/root/input" "/user/root/output"
hdfs dfs -ls /logs/root/remote-logs
