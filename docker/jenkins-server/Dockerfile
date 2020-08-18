FROM jenkins/jenkins:lts

USER jenkins

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh  < /usr/share/jenkins/ref/plugins.txt

ENV HOME $JENKINS_HOME
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"