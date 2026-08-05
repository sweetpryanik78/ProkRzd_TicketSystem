FROM mariadb:11.8.8

WORKDIR /

COPY --chmod=755 ./initOsTicketDataBase.sh /docker-entrypoint-initdb.d/initOsTicketDataBase.sh
COPY --chmod=644 ./bind-addres-server.cnf /etc/mysql/mariadb.conf.d/bind-addres-server.cnf