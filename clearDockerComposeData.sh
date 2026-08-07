#!/usr/bin/bash

docker container stop mariadb osTicket certbot && \
    docker container rm mariadb osTicket certbot && \
    docker image rm prokrzd_ticketsystem-mariadb:latest prokrzd_ticketsystem-osticket:latest prokrzd_ticketsystem-certbot:latest && \
    docker volume rm mariadb-disk media-disk osticket-disk

docker system prune -a -f