#!/bin/sh

touch /etc/auth.txt

password_auth="$(MailHog bcrypt ${password})" && \
    basic_auth="${username}:${password_auth}" && \
    echo $basic_auth > /etc/auth.txt

supervisorctl restart

su mailhog

MailHog -auth-file=/etc/auth.txt