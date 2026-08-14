#!/usr/bin/bash

docker container stop mariadb osTicket && \
    docker container rm mariadb osTicket && \
    docker image rm prokrzd_ticketsystem-mariadb:latest prokrzd_ticketsystem-osticket:latest && \
    docker volume rm prokrzd_ticketsystem_osticket-disk prokrzd_ticketsystem_mariadb-disk prokrzd_ticketsystem_media-disk

docker system prune -a -f