#!/usr/bin/env bash
docker build -t geo-server .
running_container_id=`cat ./running_container_id || false`
docker stop ${running_container_id}
docker rm geo_server
docker run --name geo_server -i -t -d -p 8080:8080 geo-server >| running_container_id