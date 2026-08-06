FROM alpine:3.23.5

RUN apk add --no-cache certbot --no-interactive

WORKDIR /

COPY --chmod=755 generateSslCert.sh /usr/bin/generateSslCert.sh

CMD ["/bin/sh", "/usr/bin/generateSslCert.sh"]