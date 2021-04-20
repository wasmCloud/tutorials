#!/usr/bin/env bash
curl -s https://packagecloud.io/install/repositories/wasmcloud/core/script.deb.sh | bash
apt-get install wasmcloud
docker-compose up -d

touch /tmp/.init_done
