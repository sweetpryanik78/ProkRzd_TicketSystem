FROM ubuntu/apache2:2.4-24.04_edge

ENV TZ=Europe/Moscow

WORKDIR /var/www/

RUN echo $TZ > /etc/timezone && \
    apt-get update && \
    apt-get install php php-mysqli php-mysql php-zip php-gd php-apcu php-mbstring php-intl php-xml -y && \
    apt clean

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf && \
    mkdir -p /var/lib/osTicketMedia && chown www-data:www-data /var/lib/osTicketMedia && \
    mkdir -p /etc/tls-certs && \
    rm /etc/apache2/sites-enabled/000-default.conf && \
    rm -rf /var/www/html && \
    a2enmod ssl && a2enmod rewrite

COPY --chown=33:33 osTicket-1.18.4 ./osTicket-1.18.4
COPY osTicket.conf /etc/apache2/sites-enabled/osTicket.conf
COPY --chown=33:33 ./osTicket-1.18.4/include/ost-sampleconfig.php ./osTicket-1.18.4/include/ost-config.php
COPY php.ini /etc/php/8.3/apache2/php.ini