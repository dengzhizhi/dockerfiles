Commands
========

Start up

```
docker run -it -d --name opengrok -p 9098:8080 -v "$PWD":/app -v ~/dev/work/docker/jdk1.8.0_151:/usr/lib/jvm -v ~/opengrok_docker_data:/var/opengrok -w /app ps-aus/opengrok bash -c "/tomcat/bin/catalina.sh run"
```

Indexing

```
docker exec opengrok bash -c "/opengrok/bin/OpenGrok index"
```
