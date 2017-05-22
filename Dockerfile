FROM maven:3.3.9-jdk-8

MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>

# Let the conatiner know that there is no tty
ENV MAVEN_OPTS "-Xmx16G -Dlog4j.configuration=file:/FOX/data/fox/log4j.properties"
ENV DEBIAN_FRONTEND noninteractive

RUN git clone https://github.com/renespeck/FOX /FOX
WORKDIR /FOX
COPY run.sh /run.sh
RUN chmod +x /run.sh

RUN cp /FOX/fox.properties-dist /FOX/fox.properties

EXPOSE 4444

CMD ["/run.sh"]
