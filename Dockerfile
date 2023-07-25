#
# Build stage
#
FROM maven:3.9.0 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests

#
# Package stage
#
FROM openjdk:20-jdk-slim
COPY --from=build /target/WorkWise.jar WorkWiseApplication.jar
# ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["java","-jar","WorkWiseApplication.jar"]