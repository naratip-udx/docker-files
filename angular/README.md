# Angular - Docker

This is an image to build a container for Angular workspace.

## Quick Start

Pull image from Docker hub

```docker
docker pull naratipud/angular
```

Running

```docker
docker run -it -d -p 4201:4200 -v /path/to/project:/usr/src/app naratipud/angular yarn start
```

## Docker Compose

create `docker-compose.yml` file.

```yaml
version: '3'
services:
  web:
    image: naratipud/angular
    volumes:
      - /path/to/project:/usr/src/app
    ports:
      - 4201:4200
    command: ['yarn', 'start']
```

Running `Docker Compose` command.

```docker-compose
docker-compose up -d
```
