#Gitbucket on Docker
This Dockerfile is simply start for Gitbucket.

##Introduction
This Dockerfile is simply start for Gitbucket.

##Information for access from external
- It use 8080 port number
- It save data to /opt/gitbucket

##How to use this image
You can run this image following command.
```
docker run -d --name='gitbucket' -p 8080:8080 -v /opt/docker/data/gitbucket:/opt/gitbucket minanon/gitbucket
```

