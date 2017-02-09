FROM ubuntu:14.04

ENV SONAR_HOME /var/sonar_home
ENV JAVA_HOME /usr/local/jdk
ENV PATH $JAVA_HOME/bin:$PATH

ARG user=sonar
ARG group=sonar
ARG uid=1000
ARG gid=1000

RUN groupadd -g ${gid} ${group} \
    && useradd -d "$SONAR_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user} \
    && mkdir -p $JAVA_HOME

WORKDIR $SONAR_HOME

ADD run.sh /var/tmp/

USER ${user}

EXPOSE 9000
EXPOSE 9001


#ENTRYPOINT ["cd /var/sonar_home/bin/linux-x86-64 && ./sonar.sh start && tail -f ../../logs/sonar.log"]
CMD ["/var/tmp/run.sh"]

