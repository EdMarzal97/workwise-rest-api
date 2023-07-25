FROM openjdk:20-alpine
COPY . .
RUN mvn clean package -DskipTests
FROM openjdk:17
COPY target/WorkWiseApplication.jar WorkWiseApplication.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "WorkWiseApplication.jar"]