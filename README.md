# metabase-postgres-docker-compose

ssh to the instance and run:

```
bash install-docker.sh
git clone https://github.com/acro5piano/metabase-postgres-docker-compose
cd metabase-postgres-docker-compose
sudo docker-compose up -d --build
```

```
sudo docker-comopse exec cli heroku login
sudo docker-comopse exec cli heroku pg:backups:capture -a myapp
sudo docker-comopse exec cli heroku pg:backups:download -a myapp
sudo docker cp heroku heroku pg:backups:download -a myapp
```

```
sudo docker-compose exec db \
    pg_restore --verbose --clean --no-acl --no-owner \
    -h localhost -U metabase -d metabase --create /host/latest.dump
```
