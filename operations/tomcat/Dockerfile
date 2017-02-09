FROM ubuntu:14.04

##USER root
#COPY sources.list /etc/apt/sources.list
#RUN apt-get update \
#  && apt-get install -y curl tar \
#  && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/local/jdk
ENV PATH $JAVA_HOME/bin:$PATH
ENV TOMCAT_HOME /var/tomcat_home

ARG user=yj
ARG group=yj
ARG uid=1000
ARG gid=1000

RUN groupadd -g ${gid} ${group} \
    && useradd -d "$TOMCAT_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user} \
    && mkdir -p $JAVA_HOME \
    && mkdir -p $TOMCAT_HOME

##RUN groupadd docker
##RUN gpasswd -a ${user} docker
##RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
WORKDIR $TOMCAT_HOME
COPY tomcat.tar.gz tomcat.tar.gz
RUN set -x \
#	&& curl -fSL "http://mirror.bit.edu.cn/apache/tomcat/tomcat-8/v8.5.4/bin/apache-tomcat-8.5.4.tar.gz" -o tomcat.tar.gz \
        && tar -xvf tomcat.tar.gz -C $TOMCAT_HOME --strip-components=1 \
        && chown -R ${user}:${group} ./

COPY run.sh /var/tmp/


USER ${user}
EXPOSE 8080

##ENTRYPOINT ["/usr/local/jdk/bin/java", "-jar", "jenkins.war"]
CMD ["/var/tmp/run.sh"]
