FROM ubuntu:14.04

##USER root
##RUN apt-get update \
##  && apt-get install -y sudo \
##  && rm -rf /var/lib/apt/lists/*
##
ENV JENKINS_HOME /var/jenkins_home
ENV JENKINS_SLAVE_AGENT_PORT 50000
ENV GRADLE_HOME /var/gradle_home
ENV GRADLE_USER_HOME /var/.gradle
ENV JAVA_HOME /usr/local/jdk
ENV M2_HOME /var/maven_home 
ENV PATH $JAVA_HOME/bin:$GRADLE_HOME/bin:$M2_HOME/bin:$PATH

ARG user=jenkins
ARG group=jenkins
ARG uid=1000
ARG gid=1000

RUN groupadd -g ${gid} ${group} \
    && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user} \
    && mkdir -p $JAVA_HOME

##RUN groupadd docker
##RUN gpasswd -a ${user} docker
##RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

COPY run.sh /var/tmp/

WORKDIR $JENKINS_HOME

USER ${user}
RUN ln -s $GRADLE_USER_HOME ~/.gradle
EXPOSE 8080
EXPOSE $JENKINS_SLAVE_AGENT_PORT

##ENTRYPOINT ["/usr/local/jdk/bin/java", "-jar", "jenkins.war"]
CMD ["/var/tmp/run.sh"]
