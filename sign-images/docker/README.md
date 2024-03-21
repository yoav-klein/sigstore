# Sign Images - Keyless
---

This exmaple demonstrates keyless signing
The idea is that we sign an image using a OpenID Connect identity

## Usage

Sign with
```
$ ./sign.sh
```

This will give you a link to authenticate using OIDC, and ask you 
for the generated code.

Verify with
```
$ ./verify.sh
```

The verification command specifies the identity and the OIDC issuer which were used
in the signature.
