# Sign Binary with KMS key
---

Built on the `sign-file-keyless`.

This time we sign using a KMS key.
Note that for verification, you don't need to pass a certificate,
only the KMS key and the signature.

## Usage
---
Create the terraform configuration:
```
$ terraform apply -auto-approve
```

Sign:
```
$ ./sign.sh
```

Verify:
```
$ ./verify.sh
```

