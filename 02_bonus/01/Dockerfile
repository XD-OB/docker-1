# A debian container include all needs:

FROM	debian

RUN	apt-get -y update && apt-get -y upgrade && \
	apt-get install -y clang && \
	apt-get install -y git && \
	apt-get install -y vim && \
	apt-get install -y gcc && \
	apt-get install -y make && \
	apt-get install -y net-tools

CMD	/bin/bash
