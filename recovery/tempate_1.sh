#!/bin/sh

curl -XGET 'es3:9200/null_value_3/_search?pretty' -d '{
    "query": {
        "match_all": {
        }
    }
}'


