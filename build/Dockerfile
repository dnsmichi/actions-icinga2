FROM ubuntu:bionic

LABEL "com.github.actions.name"="Icinga 2"
LABEL "com.github.actions.description"="Build and test Icinga 2"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/dnsmichi/actions-icinga2"
LABEL "homepage"="http://github.com/icinga"
LABEL "maintainer"="Michael Friedrich <michael.friedrich@icinga.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
