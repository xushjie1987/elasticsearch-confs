#!/bin/sh

export ES_HEAP_SIZE=1g

/bin/bash /opt/elasticsearch-2.1.1/bin/elasticsearch -Des.path.conf=/data/vdb1/elasticsearch-2.1.1/cluster_1/conf -d -p /data/vdb1/elasticsearch-2.1.1/cluster_1/pids/elasticsearch.pid

