#!/bin/bash

container_name=${1-jellyfin}
image_name=${2-"jellyfin/jellyfin"}

echo "container name:" $container_name, "image name:" $image_name

mkdir -p /home/jellyfin/config
mkdir -p /home/jellyfin/media

docker run -d --name $container_name -p 8096:8096 -v /home/jellyfin/config:/config -v /home/jellyfin/media:/media -v /home:/home --privileged --net host --pid host $image_name
