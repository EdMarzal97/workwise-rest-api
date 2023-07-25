FROM maven:3.9.0-eclipse-temurin-17-alpine
COPY . .
RUN mvn clean package -DskipTests
FROM openjdk:17
COPY --from=build /target/*.jar WorkWise.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "WorkWise.jar"]