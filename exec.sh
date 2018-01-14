#!/bin/sh

docker exec -it main /bin/bash -c 'cd /home/work/dakoku_v2/; exec "${SHELL:-sh}"'
