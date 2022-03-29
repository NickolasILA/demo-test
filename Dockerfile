FROM openjdk:8u322-jdk-slim-bullseye
MAINTAINER MYKOLA YATSUH "mykola.yatsuh@gmail.com"
WORKDIR /usr/local/bin

#will put test-program.jar into WORKDIR (because of . + WORKDIR)
#to specify location different than current working directory, we just need to provide location instead of "."
COPY /target/demo-1-0.0.1-SNAPSHOT.jar .

CMD ["java", "-jar", "demo-1-0.0.1-SNAPSHOT.jar"]