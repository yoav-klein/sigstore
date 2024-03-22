#!/bin/bash

#cosign generate-key-pair
cosign sign-blob  file.txt --output-certificate fulcio.crt.base64 --output-signature fulcio.sig
