#!/bin/bash

docker -D stop routedns
docker -D kill routedns
docker -D rmi routerdns
docker -D rm routedns
docker system prune
docker -D build -t routedns .

