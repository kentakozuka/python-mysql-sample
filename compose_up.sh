#!/bin/sh

# change SELinux settings
su -c "setenforce 0"

docker-compose up -d
