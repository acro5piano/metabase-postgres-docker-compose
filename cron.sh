#!/bin/bash

sudo docker-compose exec cli heroku pg:backups:capture -a myapp
sudo docker-compose exec cli heroku pg:backups:download -a myapp
sudo docker-compose exec cli cp latest.dump /host

sudo docker-compose exec appdata \
    pg_restore --verbose --clean --no-acl --no-owner \
    -h localhost -U metabase -d metabase --create /host/latest.dump
