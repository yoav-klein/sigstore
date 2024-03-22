#!/bin/bash

REPOSITORY_URL=$(terraform output -raw repository_url)

docker pull alpine
docker tag alpine $REPOSITORY_URL:0.1

docker push $REPOSITORY_URL:0.1


