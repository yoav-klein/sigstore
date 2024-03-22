# Sign Binary
---

In this example, we sign a binary file (in this case just a text file) without a key

When signing, Cosign:
* Creates a public/private key pair (internally)
* Redirects you to authenticate against a OIDC provider, retrieving an ID token
* Issues a certificate request from Fulcio, passing it the ID token and the public key.
* Fulcio creates a short-term certificate and signs it
* Fulcio passes the certificate back to cosign
* Cosign signs the file with the private key
* Cosign gets read of the private key
* Signature and Certificate are pushed to Rekor for verification

## Usage
---

Sign:
```
$ ./sign.sh
```

Verify:
```
$ ./verify.sh
```

