FROM alpine:3.23.5

ENV TZ=Europe/Moscow

RUN echo $TZ > /etc/timezone && \
    apk add --no-cache certbot --no-interactive

WORKDIR /

COPY --chmod=755 getSslCert.sh /usr/bin/getSslCert.sh

CMD ["/bin/sh", "/usr/bin/getSslCert.sh"]