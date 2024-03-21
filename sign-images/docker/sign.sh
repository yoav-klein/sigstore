#!/bin/bash

docker pull nginx
docker tag nginx yoavklein3/nginx:latest

cosign sign yoavklein3/nginx:latest
