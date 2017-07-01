#!/bin/sh

IMAGE_PATH=$1
CONTAINER_NAME="works-db"

docker container rm -f $CONTAINER_NAME
docker load -i $IMAGE_PATH
docker run --name $CONTAINER_NAME --detach -it artane/$CONTAINER_NAME
