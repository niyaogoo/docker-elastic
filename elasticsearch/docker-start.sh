#Elasticsearch can be quickly started for development or testing use with the following command:
path=$(pwd)
sudo docker run -d --rm --name elasticsearch \
--net host \
-e "discovery.type=single-node" \
-e "ES_JAVA_OPTS=-Xms128m -Xmx128m" \
-v ${path}/data/:/usr/share/elasticsearch/data/ \
docker.elastic.co/elasticsearch/elasticsearch:7.0.1
