FROM openjdk:8-jdk-alpine3.9

WORKDIR app/

COPY target/eureka-sv-0.0.1-SNAPSHOT.jar app.jar

COPY src/main/resources/application.yml application.yml

EXPOSE 8762

ENTRYPOINT ["java", "-Dspring.config.location=/app/application.yml", "-jar", "app.jar"]