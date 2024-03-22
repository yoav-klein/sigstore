#!/bin/bash


docker pull alpine:latest
docker tag alpine:latest yoavklein3/alpine:latest
docker push yoavklein3/alpine:latest

# generate a key pair
cosign generate-key-pair

cosign sign --key cosign.key yoavklein3/alpine:latest
