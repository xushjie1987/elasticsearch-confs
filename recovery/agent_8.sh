#!/bin/sh


nohup /app/apache-flume-1.6.0-bin/bin/flume-ng agent --conf /data/vdb1/flume-1.6.0/agent_8/conf --conf-file  /data/vdb1/flume-1.6.0/agent_8/conf/flume-conf.properties --classpath /app/apache-flume-1.6.0-bin/xlib/* --name a1 > /dev/null 2>&1 &


