#!/usr/bin/bash

docker container stop mariadb osTicket && \
    docker container rm mariadb osTicket && \
    docker image rm prokrzd_ticketsystem-mariadb:latest prokrzd_ticketsystem-osticket:latest && \
    docker volume rm mariadb-disk media-disk osticket-disk

docker system prune -a -f