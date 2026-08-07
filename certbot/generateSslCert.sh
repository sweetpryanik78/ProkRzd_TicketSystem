#!/usr/bin/bash

# certbot revoke --cert-name $DOMAIN_URL --delete-after-revoke --quiet

rm -rf /etc/letsencrypt/live/$DOMAIN_URL
rm -rf /etc/cert/$DOMAIN_URL

certbot certonly --standalone -d $DOMAIN_URL --register-unsafely-without-email --key-type ecdsa --agree-tos --disable-renew-updates --no-autorenew --non-interactive

mkdir -p /etc/cert/$DOMAIN_URL
cp /etc/letsencrypt/live/$DOMAIN_URL/fullchain.pem /etc/cert/$DOMAIN_URL/$DOMAIN_URL.crt
cp /etc/letsencrypt/live/$DOMAIN_URL/privkey.pem /etc/cert/$DOMAIN_URL/$DOMAIN_URL.key