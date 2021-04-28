#!/usr/bin/env bash
curl -s https://packagecloud.io/install/repositories/wasmcloud/core/script.deb.sh | bash
<<<<<<< HEAD:environments/washenv/build/1_installpackages.sh
apt-get install wash
=======
apt-get install wasmcloud wash
docker-compose up -d
git clone https://github.com/wasmcloud/examples

touch /tmp/.init_done
>>>>>>> First push:dev_apps/first-actor/background.sh
