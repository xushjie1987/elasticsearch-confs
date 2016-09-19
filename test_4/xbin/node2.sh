#!/bin/sh

export ES_HEAP_SIZE=512m

/app/elasticsearch/elasticsearch-2.1.1/bin/elasticsearch -Dpath.conf=/data/elasticsearch/clusters/test_4/conf/node2 -p /data/elasticsearch/clusters/test_4/pids/node2/elastic.pid -d

