#!/usr/bin/env bash

git clone https://github.com/jordan-rash/examples /tmp/examples
mv /tmp/examples/calculator /root/examples

docker-compose up -d

docker pull tinygo/tinygo
docker pull cjrash/tutorial
docker pull wasmcloud/wasmcloud
docker pull wasmcloud/wash

touch /tmp/.init_done
