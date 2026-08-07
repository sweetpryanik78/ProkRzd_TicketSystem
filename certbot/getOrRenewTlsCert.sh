#!/usr/bin/bash

source ~/ProkRzd_TicketSystem/environment/.etc.env


{
    certbot renew --cert-name $DOMAIN_NAME \
    --force-renewal \
    --disable-renew-updates \
    --no-autorenew \
    --non-interactive
} || {
    certbot certonly --standalone \
       -d $DOMAIN_NAME \
       --register-unsafely-without-email \
       --key-type ecdsa \
       --agree-tos \
       --disable-renew-updates \
       --no-autorenew \
       --non-interactive
}

mkdir -p ~/ProkRzd_TicketSystem/tls-certs/$DOMAIN_NAME

cp /etc/letsencrypt/live/$DOMAIN_NAME/fullchain.pem ~/ProkRzd_TicketSystem/tls-certs/$DOMAIN_NAME/fullchain.pem
cp /etc/letsencrypt/live/$DOMAIN_NAME/privkey.pem ~/ProkRzd_TicketSystem/tls-certs/$DOMAIN_NAME/privkey.pem