FROM openjdk:8
EXPOSE 8080
ADD target/jenkins-dev-ops-1.jar jenkins-dev-ops-1.jar
ENTRYPOINT ["java","-jar","/jenkins-dev-ops-1.jar"]