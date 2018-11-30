# docker run --rm -it -p 34197:34197/udp factorio

FROM debian

EXPOSE 34197/udp

RUN apt -y update && apt -y upgrade && apt install xz-utils

ADD https://www.factorio.com/get-download/stable/headless/linux64 /root/factorio.tar.xz

WORKDIR /root

RUN tar xvf factorio.tar.xz && ./factorio/bin/x64/factorio --create ~/saves/map.zip

CMD ./factorio/bin/x64/factorio --start-server ~/saves/map.zip
