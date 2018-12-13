#!/bin/bash
# For use with dokku/dokku-postgres.
# Downloads Postgres Database dumps

source ../settings.conf

for server in $dokku_servers
do
    ymd=$(date "+%Y-%m-%d")
    db_list=`ssh -l root 178.128.234.219 dokku postgres:list | sed 1d | awk '{print $1}'`

    for db_name in $db_list
    do
        file="$ymd-${db_name}-Dokku.dump"
        ssh -v $server dokku postgres:export $db_name > "$file"
    done
done