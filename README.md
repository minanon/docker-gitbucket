#docker-gitbucket
Gitbucket on Docker

##Introduction
This Dockerfile is simply start for Gitbucket.

##Gitbucket
- [Gitbucket](https://github.com/takezoe/gitbucket)

##Maintainer
minanon

##Source links
- [Dockerfile](https://github.com/minanon/docker-gitbucket)
- [Docker registry](https://registry.hub.docker.com/u/minanon/gitbucket/)

##Information for access from external
- It use 8080 port number
- It save data to /opt/gitbucket

##How to use this image
You can run this image following command.

    docker run -d --name='gitbucket' -p 8080:8080 -v /opt/docker/data/gitbucket:/opt/gitbucket minanon/gitbucket

You can access to Gitbucket server.
http://localhost:8080
