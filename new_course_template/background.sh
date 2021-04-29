#!/usr/bin/env bash

git clone https://github.com/jordan-rash/examples /tmp/examples

curl -s https://packagecloud.io/install/repositories/wasmcloud/core/script.deb.sh | bash
apt-get install wasmcloud wash cargo -y
docker-compose up -d

wget https://github.com/tinygo-org/tinygo/releases/download/v0.17.0/tinygo_0.17.0_amd64.deb
sudo dpkg -i tinygo_0.17.0_amd64.deb

snap install rustup --classic
rustup default stable
rustup target add wasm32-unknown-unknown

mv /tmp/examples/calculator /root/examples

touch /tmp/.init_done
