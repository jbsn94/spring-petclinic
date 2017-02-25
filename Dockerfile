FROM openjdk:8-jre

ENV SERVICE_HOME /usr/local/services
RUN mkdir -p "$SERVICE_HOME/"
COPY target/spring-petclinic-1.5.1.jar $SERVICE_HOME
WORKDIR $SERVICE_HOME

EXPOSE 8080
CMD ["/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java", "spring-petclinic-1.5.1.jar"]
