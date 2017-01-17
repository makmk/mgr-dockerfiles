#! /bin/bash

set -e
hdfs dfs -mkdir /user/root -p
hdfs dfs -put etc/hadoop input
yarn jar share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.3.jar grep input output 'dfs[a-z.]+'
