#!/bin/sh

nohup /app/apache-flume-1.6.0-bin/bin/flume-ng agent --conf /data/vdb1/flume-1.6.0/demo/conf --conf-file  /data/vdb1/flume-1.6.0/demo/conf/flume-conf.properties --name agent9 > /dev/null 2>&1 &

