#!/usr/bin/env bash

PARAMS="-u ${MYSQL_USER:-root}"
[[ -z "$MYSQL_PASS" ]] || PARAMS="$PARAMS -P '${MYSQL_PASS}'"
[[ -z "$MYSQL_ASK_PASS" ]] || PARAMS="$PARAMS -p"

mysql $PARAMS -e "create database kemal_mysql_test"
mysql $PARAMS -e "create user 'kemal_mysql'@'localhost'"
mysql $PARAMS -e "grant all on kemal_mysql_test.* to 'kemal_mysql'@'localhost'"

mysql -u kemal_mysql kemal_mysql_test < ./scripts/users.sql
