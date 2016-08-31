#!/bin/sh

kill -9 `cat /data/elasticsearch/clusters/test_2/pids/node-1/elastic.pid`
kill -9 `cat /data/elasticsearch/clusters/test_2/pids/node-2/elastic.pid`
kill -9 `cat /data/elasticsearch/clusters/test_2/pids/node-3/elastic.pid`

