#!/bin/bash

container_name=${1-aliyunpan-webdav}
image_name=${2-"messense/aliyundrive-webdav"}

echo "container name:" $container_name, "image name:" $image_name

mkdir -p /etc/aliyundrive-webdav
cp ./refresh_token /etc/aliyundrive-webdav
docker run -ti --name $container_name --restart=unless-stopped -p 8080:8080 -v /etc/aliyundrive-webdav:/etc/aliyundrive-webdav -e WEBDAV_AUTH_USER=admin -e WEBDAV_AUTH_PASSWORD=admin123  -e DRIVE_TYPE=resource $image_name 
