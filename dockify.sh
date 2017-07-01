#!/bin/sh

docker container rm -f works-db
docker build -t jschool/works-db .
docker run --name works-db -d -p 13000:3306 jschool/works-db