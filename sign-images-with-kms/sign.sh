#!/bin/bash

KEY_ARN=arn:aws:kms:us-east-1:730335579287:key/85c59776-a8c7-4750-9a9c-f5dd677b791c
#KEY_ARN=$(terraform output -raw key_arn)
#REPOSITORY_URL=$(terraform output -raw repository_url)
REPOSITORY_URL=730335579287.dkr.ecr.us-east-1.amazonaws.com/example

cosign sign --key awskms:///${KEY_ARN} ${REPOSITORY_URL}:0.1
