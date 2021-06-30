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
# Local build
docker build --tag william57m/healthcheck .

# Multiplatform build 
# https://www.docker.com/blog/multi-arch-images/
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t william57m/healthcheck --push .
```

Deploy
```
docker push william57m/healthcheck
```
