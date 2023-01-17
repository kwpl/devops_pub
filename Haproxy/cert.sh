#!/bin/sh
openssl genrsa -out cert.key 1024
openssl req -new -key cert.key -out cert.csr -subj '/C=PL/ST=WLKP/L=POZNAN/O=VIZLIB/OU=VIZLIB/CN=vizlib.com' -passin pass:vizlib -passout pass:vizlib
openssl x509 -req -days 365 -in cert.csr -signkey cert.key -out cert.crt
cat cert.crt cert.key|tee cert.pem