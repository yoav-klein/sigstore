#!/bin/bash

KEY_ARN=$(terraform output -raw key_arn)
cosign verify-blob --key awskms:///${KEY_ARN} --signature fulcio.sig file.txt 
