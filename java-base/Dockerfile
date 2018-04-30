# Dockerfile
# Build with `docker build -f Dockerfile -t krazakee/external-java-base:1.2 .`

FROM  docker1:5000/ubuntu:18.04

MAINTAINER  Daniel Deng <zhizhideng@gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu bionic main universe" > /etc/apt/sources.list

RUN apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y -q --no-install-recommends software-properties-common git unzip zip wget silversearcher-ag vim.tiny tmux inetutils-ping curl tzdata httpie &&\
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    git clone --depth 1 https://github.com/junegunn/fzf.git /root/.fzf && \
    /root/.fzf/install

COPY dotfiles/.tmux.conf /root
COPY set_timezone.sh /root

ENV JAVA_HOME /usr/lib/jvm
ENV PATH /usr/lib/jvm/bin:${PATH}

RUN echo "export JAVA_HOME=/usr/lib/jvm" >> ~/.bashrc && \
    echo "export PATH=/usr/lib/jvm/bin:\$PATH" >> ~/.bashrc

#Install lnav
RUN wget https://github.com/tstack/lnav/releases/download/v0.8.2/lnav-0.8.2-linux-64bit.zip && \
    unzip lnav*.zip && \
    cp lnav-0.8.2/lnav /usr/local/bin/ && \
    rm -rf lnav*
