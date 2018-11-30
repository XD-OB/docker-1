FROM ubuntu:18.04

MAINTAINER ishaimou	<ishaimou@student.1337.ma>

RUN apt-get update -q && \
    apt-get upgrade -y && \
    apt-get install -yq --no-install-recommends \
	curl \
	openssh-server \
	ca-certificates \
	apt-transport-https \
	wget \
	vim \
	nano \
	tzdata \
	postfix

RUN curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash && \
	apt-get install -y gitlab-ce

RUN apt update && apt install -y tzdata && \
	apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Allow to access embedded tools
ENV PATH /opt/gitlab/embedded/bin:/opt/gitlab/bin:/assets:$PATH

# Resolve error: TERM environment variable not set
ENV TERM xterm

# Expose HTTPS & SSH
EXPOSE 443 80 22

RUN echo "#!/bin/bash\nrunsvdir-start &\necho \"external_url 'http://gitlab.ishaimou.com'\" >> /etc/gitlab/gitlab.rb\ngitlab-ctl reconfigure\n/etc/init.d/ssh start\ngitlab-ctl tail" > /root/launch.sh && chmod +x /root/launch.sh

ENTRYPOINT ["/root/launch.sh"]

# docker run -it --name gitlab --rm -p 8080:80 -p 8022:22 -p 8443:443 --privileged gitlab
