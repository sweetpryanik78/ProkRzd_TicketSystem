#!/bin/bash

docker container stop mariadb osTicket certbot && \
    docker container rm mariadb osTicket certbot && \
    docker image rm prok_ticket_system-mariadb:latest prok_ticket_system-osticket:latest prok_ticket_system-certbot:latest && \
    docker volume rm mariadb-disk media-disk osticket-disk

docker system prune -a -f