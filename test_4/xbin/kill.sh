#!/bin/sh

kill -9 `cat /data/elasticsearch/clusters/test_4/pids/node1/elastic.pid`
kill -9 `cat /data/elasticsearch/clusters/test_4/pids/node2/elastic.pid`
kill -9 `cat /data/elasticsearch/clusters/test_4/pids/node3/elastic.pid`
kill -9 `cat /data/elasticsearch/clusters/test_4/pids/node4/elastic.pid`
kill -9 `cat /data/elasticsearch/clusters/test_4/pids/node5/elastic.pid`

