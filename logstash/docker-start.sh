config_pwd=$(pwd)/config
data_pwd=$(pwd)/data
sudo docker run --rm -it \
-d \
-v ${config_pwd}/logstash.conf:/usr/share/logstash/pipeline/logstash.conf \
-v ${config_pwd}/jvm.options:/usr/share/logstash/config/jvm.options \
-v ${config_pwd}/logstash.yml:/usr/share/logstash/config/logstash.yml \
-v ${data_pwd}/:/data/ \
--net host \
--name logstash \
docker.elastic.co/logstash/logstash:7.0.1
