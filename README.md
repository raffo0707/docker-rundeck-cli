# Rundeck

[![Build Status](https://drone.xataz.net/api/badges/xataz/docker-rundeck/status.svg)](https://drone.xataz.net/xataz/docker-rundeck)
[![](https://images.microbadger.com/badges/image/xataz/rundeck.svg)](https://microbadger.com/images/xataz/rundeck "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/xataz/rundeck.svg)](https://microbadger.com/images/xataz/rundeck "Get your own version badge on microbadger.com")

> This image is build and push with [drone.io](https://github.com/drone/drone), a circle-ci like self-hosted.
> If you don't trust, you can build yourself.

## Features
* Based on alpine
* No **ROOT** process.
* Latest rundeck version
* Persist data


## Tag available
* latest, 1.0.27, 1.0, 1 [(Dockerfile)](https://github.com/xataz/docker-rundeck-cli/blob/master/Dockerfile)


## Description
What is [Rundeck](http://rundeck.org/) ?
Rundeck is an open source automation service with a web console, command line tools and a WebAPI. It lets you easily run automation tasks across a set of nodes.


## BUILD IMAGE
### Build arguments
* RUNDECK_CLI_VER : Rundeck version

### simple build
```shell
docker build -t xataz/rundeck-cli github.com/xataz/docker-rundeck-cli
```

### Build with arguments
```shell
docker build -t xataz/rundeck:1.0.22 --build-arg RUNDECK_VER=1.0.22 github.com/xataz/docker-rundeck-cli
```

## Configuration
### Environments
* UID
* GID
* RD_URL
* RD_USER
* RD_PASSWORD
* RD_TOKEN

Show https://rundeck.github.io/rundeck-cli/configuration/ for more environments variables




