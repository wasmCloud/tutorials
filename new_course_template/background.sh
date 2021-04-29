#!/usr/bin/env bash

git clone https://github.com/jordan-rash/examples /tmp/examples
mv /tmp/examples/calculator /root/examples

curl -s https://packagecloud.io/install/repositories/wasmcloud/core/script.deb.sh | bash
apt-get install wasmcloud wash -y
docker-compose up -d

docker pull tinygo/tinygo
docker pull rust
docker pull wasmcloud/wasmcloud

touch /tmp/.init_done
