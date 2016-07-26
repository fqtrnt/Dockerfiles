FROM ubuntu:14.04

ENV JENKINS_HOME /var/jenkins_home
ENV JENKINS_SLAVE_AGENT_PORT 50000

ARG user=jenkins
ARG group=jenkins
ARG uid=1000
ARG gid=1000

RUN groupadd -g ${gid} ${group} \
    && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user} \
    && mkdir -p /usr/local/jdk

ENV JAVA_HOME /usr/local/jdk

WORKDIR $JENKINS_HOME

USER ${user}

EXPOSE 8080
EXPOSE $JENKINS_SLAVE_AGENT_PORT

ENTRYPOINT ["/usr/local/jdk/bin/java", "-jar", "jenkins.war"]
