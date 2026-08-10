#!/usr/bin/bash

/usr/bin/mariadb --user=root \
    --password=$MARIADB_ROOT_PASSWORD \
    --execute="CREATE USER '"$MARIADB_USER"'@'%' IDENTIFIED BY '"$MARIADB_PASSWORD"';"

/usr/bin/mariadb --user=root \
    --password=$MARIADB_ROOT_PASSWORD \
    --execute="CREATE DATABASE IF NOT EXISTS "$MARIADB_DATABASE";"

/usr/bin/mariadb --user=root \
    --password=$MARIADB_ROOT_PASSWORD \
    --execute="GRANT ALL PRIVILEGES ON "$MARIADB_DATABASE".* TO '"$MARIADB_USER"'@'%';"

/usr/bin/mariadb --user=root \
    --password=$MARIADB_ROOT_PASSWORD \
    --execute="FLUSH PRIVILEGES;"