#########################################################################
# File Name: run.sh
# Created Time: Fri 05 Jan 2024 11:25:03 AM CST
#########################################################################
#!/bin/bash

apt update 
apt install rclone fuse -y
rclone mount aliyun-webdav: /home/media --allow-other --allow-non-empty --vfs-cache-mode writes
