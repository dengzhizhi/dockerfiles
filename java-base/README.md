Build
=====

```
docker build -f Dockerfile -t docker1:5000/external-java-base:1.1 .
```

Run
===

```
docker run -it --rm -v $PWD:/app -v ~/dev/work/docker/jdk-9.0.1:/usr/lib/jvm -w /app -i -t docker1:5000/external-java-base:1.1 /bin/bash
```
