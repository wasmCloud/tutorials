#!/usr/bin/env bash
curl -s https://packagecloud.io/install/repositories/wasmcloud/core/script.deb.sh | bash
<<<<<<< HEAD
apt-get install wasmcloud wash
=======
apt-get install wash
>>>>>>> Wasmcloud Intro tutorial init
docker-compose up -d

touch /tmp/.init_done
