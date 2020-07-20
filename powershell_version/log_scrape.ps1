#!/bin/bash
# use logstash docker to get required fields and generate json. logstash config details can be found in helpdesk_log_pipeline.conf
docker run --detach --rm -v "$(pwd)":/logstash_tmp docker.elastic.co/logstash/logstash:7.8.0 /usr/share/logstash/bin/logstash -f /logstash_tmp/helpdesk_log_pipeline.conf
echo "output json is generated in "$(pwd)"/output.json"
sleep 60
# post json to server
curl.exe -X POST -H "Content-Type: application/json" -d @./output.json https://foo.com/bar
