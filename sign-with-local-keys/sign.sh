#!/bin/bash

# generate a key pair
cosign generate-key-pair

IMAGE=yoavklein3/nginx:latest
cosign sign --key cosign.key $IMAGE
