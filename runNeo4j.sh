#!/bin/sh

docker run \
    --name myneo4j -p7474:7474 -p7687:7687 \
    -e NEO4J_AUTH=neo4j/Testing123 \
    -d -v $HOME/Projects/docker/data/neo4j:/data \
    -v $HOME/Projects/docker/logs/neo4j:/logs \
    -v $HOME/Projects/docker/data/neo4j/import:/import \
    -v $HOME/Projects/docker/data/neo4j/plugins:/plugins \
    jmreif/neo4j
docker ps
