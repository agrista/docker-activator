FROM openjdk:7-alpine
MAINTAINER Ross Savage <ross.savage@agrista.com>

RUN apk update && apk add curl unzip
RUN curl -O http://downloads.typesafe.com/typesafe-activator/1.3.6/typesafe-activator-1.3.6.zip 
RUN unzip typesafe-activator-1.3.6.zip -d / && rm typesafe-activator-1.3.6.zip && chmod a+x /activator-dist-1.3.6/activator
ENV PATH $PATH:/activator-dist-1.3.6

RUN mkdir /app
WORKDIR /app

CMD ["activator", "run"]
