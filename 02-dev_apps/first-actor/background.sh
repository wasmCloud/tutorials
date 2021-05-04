#!/usr/bin/env bash

git clone https://github.com/jordan-rash/examples /tmp/examples
mv /tmp/examples/calculator /root/examples

docker-compose up -d

curl https://packagecloud.io/install/repositories/wasmcloud/core/script.deb.sh | sudo bash
sudo apt install wasmcloud wash

docker pull tinygo/tinygo
docker pull cjrash/tutorial
docker pull cjrash/tutorial:npm

touch /tmp/.init_done
