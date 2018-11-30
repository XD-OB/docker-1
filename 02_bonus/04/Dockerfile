FROM	ubuntu

RUN	apt-get -y update && apt-get -y install iputils-ping
CMD	["db"]
COPY	./entrypoint.sh /usr/bin/
RUN	chmod +x /usr/bin/entrypoint.sh
CMD	/usr/bin/entrypoint.sh
