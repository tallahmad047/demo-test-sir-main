#FROM openjdk:17-jdk-alpine
#EXPOSE 8089
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} demo-test.jar
# ["java","-jar","/demo-test.jar"]
#Image de base
FROM openjdk:17jdk--alpine
LABEL maintainer="sir@formation.com"
VOLUME /main-app
ADD target/dema-test-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8089
# java -jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]