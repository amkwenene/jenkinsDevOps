FROM openjdk:8
EXPOSE 8080
ADD target/jenkinsDevOps.jar jenkinsDevOps.jar
ENTRYPOINT ["java","-jar","/jenkinsDevOps.jar"]