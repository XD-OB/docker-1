# nodejs container

FROM ubuntu

RUN apt-get -y update && apt-get upgrade
RUN apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get -y install nodejs
RUN apt-get -y install vim
RUN apt-get -y install git

CMD /bin/bash
