#!/bin/sh

if [[ $# -lt 3 ]]; then
    echo "ERROR!!! need args 3"
    exit 1
fi

for i in $(seq $2 $3); do
nohup /opt/logstash-2.2.2/bin/logstash -f /opt/logstash-2.2.2/config/metric_$1.conf -l /data/vdb1/logstash/logs/logstash_metric_$i.log &
done


