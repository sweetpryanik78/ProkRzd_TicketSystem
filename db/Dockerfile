FROM mariadb:11.8.8

ENV TZ=Europe/Moscow

WORKDIR / 

RUN echo $TZ > /etc/timezone

COPY --chmod=755 ./initDataBase.sh /docker-entrypoint-initdb.d/initDataBase.sh
COPY --chmod=644 ./bind-addres-server.cnf /etc/mysql/mariadb.conf.d/bind-addres-server.cnf