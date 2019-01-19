#!/bin/sh

git clone https://github.com/icinga/icinga2.git
cd icinga2

mkdir -p release
cd release
# Unity builds off, we're in Docker
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_INSTALL_PREFIX=/tmp/icinga2 -DICINGA2_PLUGINDIR=/tmp/icinga2/sbin -DICINGA2_UNITY_BUILD=OFF ..
cd ..
make -j 2 -C release
make test
make install
/tmp/icinga2/sbin/icinga2 --version
/tmp/icinga2/sbin/icinga2 daemon -C -DRunAsUser=$(id -u -n) -DRunAsGroup=$(id -g -n)

