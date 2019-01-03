FROM openjdk:8-jre-alpine
ARG version
RUN export version=$version
LABEL h2_version=$version
LABEL maintainer="Fellipe F"
WORKDIR /opt
ADD http://repo2.maven.org/maven2/com/h2database/h2/$version/h2-$version.jar h2.jar
RUN mkdir h2-data
RUN apk add --no-cache bash