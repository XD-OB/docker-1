FROM debian

ENV TS3SERVER_LICENSE=accept TS3SERVER_VERSION=3.5.0

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install curl -y
RUN apt-get install bzip2 -y

# CONFIG TEAMSPEAK
EXPOSE 9987/udp
EXPOSE 30033
EXPOSE 10011
EXPOSE 41144

RUN useradd ts3
WORKDIR /home/t3

RUN curl http://dl.4players.de/ts/releases/3.5.0/teamspeak3-server_linux_amd64-3.5.0.tar.bz2 > teamspeak-server.tar.bz2 
RUN tar -xjvf teamspeak-server.tar.bz2
WORKDIR teamspeak3-server_linux_amd64
COPY ts3server.ini /home/t3/teamspeak3-server_linux_amd64/
USER ts3
ENTRYPOINT ["sh","ts3server_minimal_runscript.sh", "inifile=ts3server.ini"]

