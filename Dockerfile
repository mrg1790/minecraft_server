FROM --platform=linux/x86-64 openjdk:22-oraclelinux8

LABEL maintainer="asabhi6776"

RUN mkdir /minecraft

WORKDIR /minecraft

RUN microdnf install wget -y

COPY ./eula.txt /minecraft

COPY ./paper-1.20.1-43.jar /minecraft/server.jar

RUN chmod -R 755 /minecraft

RUN chown -R 0:0 /minecraft

USER 0

CMD ["java", "-jar", "paper-1.19.2-141.jar"]

EXPOSE 25565

VOLUME /minecraft
