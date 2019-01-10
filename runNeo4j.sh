#!/bin/sh

docker run --name myneo4j -p7474:7474 -p7687:7687 -d -v $HOME/Projects/docker/data/neo4j:/data -v $HOME/Projects/docker/logs/neo4j:/logs jmreif/neo4j
docker ps
