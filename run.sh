#!/bin/bash

cd docker && \
docker-compose up --build

docker rm $(docker ps -aq)