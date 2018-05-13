#!/usr/bin/env bash
CONTAINER="wap-sample"
IMAGE="dkuida/wap-sample"
PORT=8080
docker build -t ${IMAGE} .
docker stop ${CONTAINER}
docker rm ${CONTAINER}
docker run --restart=always --name ${CONTAINER} -p ${PORT}:${PORT} -d ${IMAGE}
