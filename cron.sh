#!/bin/bash

# Root needed

set -uex

cd /home/ubuntu/metabase-postgres-docker-compose
export PATH=/bin:/usr/bin:$PATH

docker-compose exec cli heroku pg:backups:capture -a $APP
docker-compose exec cli heroku pg:backups:download -a $APP
docker-compose exec cli cp latest.dump /host
docker-compose exec cli rm latest.dump

docker-compose exec appdata \
    pg_restore --verbose --clean --no-acl --no-owner \
    -h localhost -U metabase -d metabase --create /host/latest.dump
