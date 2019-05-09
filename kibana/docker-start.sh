config_pwd=$(pwd)/config/kibana.yml
sudo docker run -d --rm --name kibana \
--net host \
-v ${config_pwd}:/usr/share/kibana/config/kibana.yml \
docker.elastic.co/kibana/kibana:7.0.1
