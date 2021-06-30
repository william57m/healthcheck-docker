# Healthcheck docker image

Docker image pinging constantly a server, can be use with healthchecks.io for example.

## Usage with docker

Run with docker
```
docker run \
  -d \
  --restart always \
  -e PING_URL='https://hc-ping.com/my_hash' \
  -e PING_INTERVAL_SEC='60' \
  william57m/healthcheck:latest
```

## Build and publish

Build
```
docker build --tag william57m/healthcheck .
```

Deploy
```
docker push william57m/healthcheck
```
