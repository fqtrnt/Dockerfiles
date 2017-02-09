FROM ubuntu:14.04

ENV NEXUS_HOME /var/nexus_home
ENV JAVA_HOME /usr/local/jdk
ENV PATH $JAVA_HOME/bin:$PATH

ARG user=nexus
ARG group=nexus
ARG uid=1000
ARG gid=1000

RUN groupadd -g ${gid} ${group} \
    && useradd -d "$NEXUS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user} \
    && mkdir -p $JAVA_HOME

COPY run.sh /var/tmp/

WORKDIR $NEXUS_HOME

USER ${user}

EXPOSE 8081

CMD ["/var/tmp/run.sh"]
