FROM ruby

MAINTAINER obelouch <ob-96@hotmail.com>

RUN apt-get update &&\
	apt-get install -y nodejs &&\
	gem install rails -v 5.2.0 &&\
	mkdir -p /opt/app

ONBUILD WORKDIR /opt/app
ONBUILD ADD . /opt/app

ONBUILD EXPOSE 3000
ONBUILD RUN bundle install &&\
	rake db:migrate && \
rake db:seed
