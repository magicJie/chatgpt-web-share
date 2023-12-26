#!/bin/bash
set -e

image=swr.lan.aiminjie.com/amj/chatgpt-web-share
tag=1.0
docker build -t $image:$tag . --build-arg https_proxy=http://10.0.1.116:20172
docker push $image:$tag

