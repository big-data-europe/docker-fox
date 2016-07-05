FROM maven:3.3.9-jdk-8

MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>

# Let the conatiner know that there is no tty
ENV DEBIAN_FRONTEND noninteractive
ENV LNG de
ENV XMX 8G

RUN git clone https://github.com/aksw/fox /FOX
WORKDIR /FOX
RUN mvn package -DskipTests
WORKDIR /FOX/release
RUN cp fox.properties-dist fox.properties
ADD learn-and-run-fox.sh /FOX/release/learn-and-run-fox.sh
RUN chmod +x /FOX/release/learn-and-run-fox.sh

CMD /FOX/release/learn-and-run-fox.sh

EXPOSE 4444
