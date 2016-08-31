#!/bin/sh


nohup /app/apache-flume-1.6.0-bin/bin/flume-ng agent --conf /data/vdb1/flume-1.6.0/agent_3/conf --conf-file /data/vdb1/flume-1.6.0/agent_3/conf/flume-conf.properties --classpath /opt/elasticsearch-2.1.1/lib/* --name agent_3 > /dev/null 2>&1 & 



