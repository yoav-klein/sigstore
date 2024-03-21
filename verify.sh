#!/bin/bash

cosign verify-blob --certificate fulcio.crt.base64 --certificate-oidc-issuer=https://accounts.google.com --certificate-identity yoavklein25@gmail.com --signature fulcio.sig file.txt 
