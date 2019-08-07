#!/usr/bin/env bash
docker stop geo-server || true
docker rm -f geo-server || true
docker build -t geo-server .
docker run --name geo-server -i -t -d -p 8080:8080 geo-server