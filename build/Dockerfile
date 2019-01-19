FROM debian:9

LABEL "com.github.actions.name"="Icinga 2"
LABEL "com.github.actions.description"="Build and test Icinga 2"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/dnsmichi/actions-icinga2"
LABEL "homepage"="http://github.com/icinga"
LABEL "maintainer"="Michael Friedrich <michael.friedrich@icinga.com>"

RUN apt-get update && apt-get -y --no-install-recommends install \
  git cmake make ccache build-essential \
  libboost-all-dev flex bison libssl-dev libpq-dev libmysqlclient-dev \
  libedit-dev libyajl-dev

COPY build.sh /usr/local/bin/build.sh

CMD ["build.sh"]

#ADD entrypoint.sh /entrypoint.sh
#ENTRYPOINT ["/entrypoint.sh"]
