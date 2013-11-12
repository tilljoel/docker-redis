# Redis
#

FROM        tilljoel/ubuntu-base
MAINTAINER  Joel Larsson, tilljoel@gmail.com
RUN         apt-key adv --keyserver keyserver.ubuntu.com --recv C7917B12
RUN         echo 'deb http://ppa.launchpad.net/chris-lea/redis-server/ubuntu quantal main' > /etc/apt/sources.list.d/chris-lea.list
RUN         apt-get update
RUN         apt-get install redis-server -y || true
ADD         ./generate_config.sh /generate_config.sh
EXPOSE      6379
CMD         ["/usr/bin/redis-server", "/data/redis.conf"]
