#!/bin/bash

container_name=${1-yunpan}
image_name=${2-"looby/aliyundrive-subscribe"}

echo "container name:" $container_name, "image name:" $image_name

docker run -ti -d --name $container_name --privileged --net host --pid host $image_name
