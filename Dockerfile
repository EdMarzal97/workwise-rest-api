FROM openjdk:20-alpine
COPY . .
RUN mvn clean package -DskipTests
FROM openjdk:17
COPY target/*.jar WorkWiseApplication.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "WorkWiseApplication.jar"]