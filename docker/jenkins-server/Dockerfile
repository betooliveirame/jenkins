FROM jenkins/jenkins:lts

MAINTAINER betoliveirame@icloud.com

USER jenkins

# create admin user
COPY secret/jenkins-user /tmp/jenkins-user
COPY secret/jenkins-password /tmp/jenkins-password
COPY security.groovy /var/jenkins_home/init.groovy.d/security.groovy

# install plugins ru config
COPY jenkins.yaml /var/jenkins_home/jenkins.yaml
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh  < /usr/share/jenkins/ref/plugins.txt

# ignore jenkins setup wizard
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"