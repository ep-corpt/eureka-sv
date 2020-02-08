FROM openjdk:8-jdk-alpine3.9

WORKDIR app/

COPY target/eureka-sv-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8761

ENTRYPOINT ["java", "-jar", "-Dspring.config.location=/app/config/application.yml", "-Dspring.profiles.active=prod", "app.jar"]