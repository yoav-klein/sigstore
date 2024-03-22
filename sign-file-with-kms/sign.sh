#!/bin/bash

KEY_ARN=$(terraform output -raw key_arn)
cosign sign-blob file.txt --key awskms:///${KEY_ARN}  --output-certificate fulcio.crt.base64 --output-signature fulcio.sig
