FROM ubuntu/apache2:2.4-24.04_edge

WORKDIR /var/www/

RUN apt update && \
    apt install -y php && \
    apt install -y php-mysqli && \
    apt install -y php-mysql && \
    apt install -y php-zip && \
    apt install -y php-gd && \
    apt install -y php-apcu && \
    apt install -y php-mbstring && \
    apt install -y php-intl && \
    apt install -y php-xml && \
    apt clean && \
    mkdir -p /var/lib/osTicketMedia && chown www-data:www-data /var/lib/osTicketMedia &&\
    rm /etc/apache2/sites-enabled/000-default.conf && \
    rm -rf /var/www/html

COPY osTicket-1.18.4 ./osTicket-1.18.4
COPY osTicket.conf /etc/apache2/sites-enabled/osTicket.conf
COPY --chown=www-data:www-data ./osTicket-1.18.4/include/ost-sampleconfig.php ./osTicket-1.18.4/include/ost-config.php
COPY php.ini /etc/php/8.3/apache2/php.ini