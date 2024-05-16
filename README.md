# Hello Codengine CapRover
shows how to deploy [SpringBoot](http://projects.spring.io/spring-boot/) RESTFul web service application with [Docker](https://www.docker.com/) and with [CapRover](https://caprover.com/docs/get-started.html)

#### Prerequisite

Installed:   
- [Docker](https://www.docker.com/)
- [git](https://www.digitalocean.com/community/tutorials/how-to-contribute-to-open-source-getting-started-with-git)
- [Open Java](https://aws.amazon.com/es/corretto)
- [Maven 3.9.6](https://maven.apache.org/install.html)

#### Steps

##### Clone source code from git
```
https://github.com/JoeArenas/hello-codengine-caprover
```

##### Build Docker image
```
docker build -t="hello-codengine-caprover" .
```
Maven build will be executed during creation of the docker image.

>Note:if you run this command for first time it will take some time in order to download base image from [DockerHub](https://hub.docker.com/)

##### Run Docker Container
```
docker run -p 8080:8080 -it --rm hello-codengine-caprover
```

##### Test application

```
curl localhost:8080/api/codengine/say-hello
```

response should be:
```
hola mundo desde codengine
```

#####  Stop Docker Container:
```
docker stop `docker container ls | grep "hello-codengine-caprover:*" | awk '{ print $1 }'`
```
