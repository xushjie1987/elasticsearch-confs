#!/bin/sh

nohup /opt/kibana-4.3.2-linux-x64/bin/kibana serve --config /data/vdb1/kibana/test_1/conf/kibana.yml > /dev/null 2>&1 &

