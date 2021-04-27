#!/usr/bin/env bash
curl -s https://packagecloud.io/install/repositories/wasmcloud/core/script.deb.sh | bash
apt-get install wasmcloud wash
docker-compose up -d
git clone https://github.com/wasmcloud/tutorials

touch /tmp/.init_done
