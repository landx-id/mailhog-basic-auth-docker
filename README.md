# MailHog with Basic Auth Enabled

MailHog is disabled its auth feature by default [https://github.com/mailhog/MailHog/blob/master/docs/Auth.md](https://github.com/mailhog/MailHog/blob/master/docs/Auth.md). This image is meant to enable Auth by default

## Usage

```
~$ docker run landx/mailhog-basic-auth:latest -e username=myUsername -e password=myPassword
```

The command above will run MailHog container with username `myUsername` and password `myPassword`

