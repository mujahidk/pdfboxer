FROM openjdk:8-jdk-alpine

LABEL maintainer="Mujahid Khaleel <mujahidkhaleel@gmail.com>"

VOLUME /tmp

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
