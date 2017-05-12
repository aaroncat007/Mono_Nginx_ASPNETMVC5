## MONO Configured with nginx as a http proxy

This repository contains Dockerfile for publishing Docker's automated build to the public [Docker Hub Registry](https://registry.hub.docker.com/) with [dumb-init](https://github.com/Yelp/dumb-init) as process with id 1 launching [nginx](http://wiki.nginx.org/Main) and an executable as a service.

## How to

```
> docker build -t mono-nginx-aspnet-example . 

> docker run -it -p 8080:80 mono-nginx-aspnet-example

```
**And then browse to your docker host on port 8080.**

> Nginx is exposed from the container on port 80.

> VOLUME is target /app.

### Base docker image
Mono 4.8.0.524

### Note

System.IO.FileNotFoundException
```
Could not find file "/root/WebSite/ASP.Net/test/bin\roslyn\csc.exe".
```
> Remove Web.config "System.CodeDom" node.

