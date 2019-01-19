FROM debian:9

LABEL "com.github.actions.name"="Icinga 2"
LABEL "com.github.actions.description"="Build and test Icinga 2"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/dnsmichi/actions-icinga2"
LABEL "homepage"="http://github.com/icinga"
LABEL "maintainer"="Michael Friedrich <michael.friedrich@icinga.com>"

RUN apt-get update && apt-get -y install gdb vim git cmake make ccache build-essential \
  libssl-dev libboost-all-dev bison flex \
  default-libmysqlclient-dev libpq-dev libyajl-dev libedit-dev

RUN ln -s /usr/bin/ccache /usr/local/bin/gcc && ln -s /usr/bin/ccache /usr/local/bin/g++


COPY build.sh /usr/local/bin/build.sh

CMD ["build.sh"]

#ADD entrypoint.sh /entrypoint.sh
#ENTRYPOINT ["/entrypoint.sh"]
