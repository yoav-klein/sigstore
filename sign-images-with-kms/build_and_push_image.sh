#!/bin/bash

#REPOSITORY_URL=$(terraform output -raw repository_url)
REPOSITORY_URL=730335579287.dkr.ecr.us-east-1.amazonaws.com/example

docker pull nginx
docker tag nginx $REPOSITORY_URL:0.1

docker push $REPOSITORY_URL:0.1


