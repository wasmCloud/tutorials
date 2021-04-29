#!/usr/bin/env bash
curl -s https://packagecloud.io/install/repositories/wasmcloud/core/script.deb.sh | bash
apt-get install wasmcloud wash
docker-compose up -d

wget https://github.com/tinygo-org/tinygo/releases/download/v0.17.0/tinygo_0.17.0_amd64.deb
sudo dpkg -i tinygo_0.17.0_amd64.deb

git clone https://github.com/jordan-rash/examples

touch /tmp/.init_done
