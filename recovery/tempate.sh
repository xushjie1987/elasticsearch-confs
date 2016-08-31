#!/bin/sh

curl -XPUT 'es3:9200/_template/test_1?pretty' -d '{
    "order": 0,
    "template": "xxxx",
    "settings": {
      "index": {
        "number_of_shards": "1",
        "number_of_replicas": "0"
      }
    },
    "mappings": {
      "yyyy": {
        "_source": {
          "enabled": true
        },
        "_timestamp": {
          "enabled": true
        },
        "_all": {
          "enabled": false
        },
        "properties": {
          "cpuUsage": {
            "include_in_all": false,
            "index": "not_analyzed",
            "store": true,
            "type": "double",
            "doc_values": true
          },
          "hostname": {
            "include_in_all": false,
            "index": "not_analyzed",
            "store": true,
            "type": "string",
            "fields": {
              "rawHostName": {
                "include_in_all": false,
                "fielddata": {
                  "format": "paged_bytes",
                  "loading": "eager_global_ordinals"
                },
                "index": "analyzed",
                "store": true,
                "type": "string",
                "doc_values": false
              }
            },
            "doc_values": true
          },
          "memUsage": {
            "include_in_all": false,
            "index": "not_analyzed",
            "store": true,
            "type": "double",
            "doc_values": true
          },
          "maxDiskUsage": {
            "include_in_all": false,
            "index": "not_analyzed",
            "store": true,
            "type": "double",
            "doc_values": true
          },
          "timestamp": {
            "include_in_all": false,
            "format": "epoch_millis||strict_date_optional_time||yyy-MM-dd HH:mm:ss||yyyy-MM-dd",
            "index": "not_analyzed",
            "store": true,
            "type": "date",
            "doc_values": true
          }
        }
      }
    },
    "aliases": {}
  }'

curl -XGET 'es3:9200/_template/test_1?pretty'


