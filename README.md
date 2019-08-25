# Back to basic

## Content

- Docker Commands
- Links

## Docker Commands

Run and remove container when stop.

```
$ docker run --name whalesay --rm docker/whalesay cowsay Hi
```

Get into container on the fly.

```
$ docker run --name ubuntu -it ubuntu:16.04 bin/bash
```

Run container in detach mode (running command to emulate process).

```
$ docker run --name ubuntu -d ubuntu:16.04 sleep 60
```

Get into a running container.

```
$ docker exec -it ubuntu /bin/bash
```

Run a selected version image container.

```
$ docker run --name ubuntu-lightweight alpine:3.7
```

Create image from a dockerfile.

```
$ docker build -t flask-server .
```

Run image build from dockerfile.

```
$ docker run --name flask-server flask-server:latest
```

Get info from a running container.

```
$ docker inspect flask-server
```

Get logs from a container.

```
$ docker logs --tail=20 flask-server
```

Publish port for a container.

```
$ docker run --name flask-server -p 3000:3000 flask-server:latest

```

Add volumen to a container.

```
$ docker run --name flask-server -v $(pwd)/src:/app flask-server:latest
```

Run a container in the same host network. We can use bridge as default, none or host.

```
$ docker run --name flask-server --network=host flask-server:latest
```

Create custom network and start a container.

```
$ docker network create --driver=bridge --subnet=182.18.0.0/16 fron-end
$ docker run --name flask-server --network=custom-isolated-network flask-server:latest
```

If more than one container are in the same network, they can call eachother just by the container name for example

```
root@f15bf440ec37:$ curl flask-server:3000
```

## Links

- [Docker Tutorial for Beginners](https://www.youtube.com/watch?v=LIpQGLdll7A)

```

```
