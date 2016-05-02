#!/bin/bash

if [ "$(id -u)" != "0" ]; then
  echo "Script need to be launched as root."
  exit 1
fi

echo "Weave installation..."
curl -L git.io/weave -o /usr/local/bin/weave
chmod +x /usr/local/bin/weave

docker-machine create --driver virtualbox master
docker-machine create --driver virtualbox node2
docker-machine create --driver virtualbox node1

