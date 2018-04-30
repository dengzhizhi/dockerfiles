# Dockerfile
# Build command
#     docker build -f Dockerfile -t krazakee/opengrok:1.1rc25 .

FROM krazakee/opengrok-base:1.0
MAINTAINER Daniel Deng <zhizhideng@gmail.com>

ENV OPENGROK_BASE /opengrok
ENV OPENGROK_DATA_BASE /data
ENV OPENGROK_TOMCAT_BASE ${CATALINA_HOME}
ENV OPENGROK_INSTANCE_BASE /var/opengrok
ENV OPENGROK_VERBOSE=true 

ENV OPENGROK_VERSION 1.1-rc25

RUN wget -q https://github.com/oracle/opengrok/releases/download/${OPENGROK_VERSION}/opengrok-${OPENGROK_VERSION}.tar.gz && \
  tar zxf opengrok*.tar.gz && \
  rm opengrok*.tar.gz && \
  mv opengrok-${OPENGROK_VERSION} ${OPENGROK_BASE} && \
  cp /opengrok/lib/source.war /tomcat/webapps/

VOLUME /var/opengrok

CMD ["/run.sh"]

