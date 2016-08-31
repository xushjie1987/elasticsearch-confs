#!/bin/sh

nohup /app/apache-flume-1.6.0-bin/bin/flume-ng agent --conf /data/vdb1/flume-1.6.0/test_1/conf --conf-file  /data/vdb1/flume-1.6.0/test_1/conf/flume-conf.properties --name test_1 > /dev/null 2>&1 &

