# metabase-postgres-docker-compose

Import Heroku postgres data to docker hosted metabase.

Why: In Heroku free plan read replica is not possible.

# How to use

## Initial setup

ssh to the instance and run:

```
git clone https://github.com/acro5piano/metabase-postgres-docker-compose
cd metabase-postgres-docker-compose
bash install-docker.sh
sudo docker-compose up -d --build
```

## import data

```
export APP=myapp
sudo ./cron.sh
```


## Scheduled sync

```
APP=myapp /home/ubuntu/metabase-postgres-docker-compose/cron.sh
```
