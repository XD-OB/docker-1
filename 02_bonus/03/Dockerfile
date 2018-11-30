FROM	debian

MAINTAINER obelouch <obelouch@hotmail.com>

EXPOSE	25565

RUN	apt-get update && apt-get upgrade -y && \
	apt-get install -y wget default-jre
WORKDIR minecraft
RUN	wget https://launcher.mojang.com/mc/game/1.13/server/d0caafb8438ebd206f99930cfaecfa6c9a13dca0/server.jar
RUN 	echo "eula=true" > eula.txt

ENTRYPOINT java -jar -Xmx1024M -Xms1024M server.jar
