FROM openjdk:7-jdk-alpine

RUN apk add --no-cache git tar bash 

#ARG MAVEN_VERSION=3.3.9
#ARG USER_HOME_DIR="/root"

#RUN mkdir -p /usr/share/maven /usr/share/maven/ref \
#  && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz \
#    | tar -xzC /usr/share/maven --strip-components=1 \
#  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn \

RUN mkdir /opt \
  && git clone https://github.com/jfsc/spring-petclinic.git  /opt/petclinic \
  && cd / 

#ENV MAVEN_HOME /usr/share/maven
#ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"

#COPY mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh
#COPY settings-docker.xml /usr/share/maven/ref/


#VOLUME "$USER_HOME_DIR/.m2"

WORKDIR /opt/petclinic

CMD ["/opt/petclinic/mvnw","spring-boot:run"]
