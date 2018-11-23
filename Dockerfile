# Note: Please run mvn package before building image

FROM elasticsearch:2.4.4

COPY . /fast-elasticsearch-vector-scoring
WORKDIR /fast-elasticsearch-vector-scoring

RUN cp elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

RUN /usr/share/elasticsearch/bin/plugin install file:///fast-elasticsearch-vector-scoring/target/releases/elasticsearch-binary-vector-scoring-2.4.4.zip
