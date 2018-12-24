# Dockerfile
# Build command
#     docker build -f Dockerfile -t krazakee/opengrok-base:1.2 .

FROM krazakee/tomcat:9.0.7
MAINTAINER Daniel Deng <zhizhideng@gmail.com>


RUN apt-get update && \
    apt-get install -yq --no-install-recommends subversion mercurial inotify-tools libxml2 libjansson4 libyaml-0-2 libaspell15 python3 python3-pip python3-distutils python3-wheel && \
    python3 -m pip install setuptools && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY ctags /usr/local/bin/
COPY bin/* /

CMD ["/run.sh"]

