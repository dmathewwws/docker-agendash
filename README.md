# docker-agendash

[![Image Layers](https://imagelayers.io/badge/lgatica/docker-agendash:latest.svg)](https://imagelayers.io/?images=lgatica/docker-agendash:latest 'Get your own badge on imagelayers.io')
[![Docker Stars](https://img.shields.io/docker/stars/lgatica/docker-agendash.svg)](https://hub.docker.com/r/lgatica/docker-agendash/)
[![Docker Pulls](https://img.shields.io/docker/pulls/lgatica/docker-agendash.svg)](https://hub.docker.com/r/lgatica/docker-agendash/)

Docker Image for agendash

## Use

## Run with mongo docker instance

```sh
docker run -d --restart=always --name mongo mongo
docker run -d --restart=always --name agendash -p 3000:3000 --link mongo:mongo lgatica/docker-agendash
```

## Run with a mongo uri

```sh
docker run -d --restart=always --name agendash -p 3000:3000 -e MONGODB_URI=mongodb://192.168.1.2/agenda lgatica/docker-agendash
```
