#!/bin/sh

git clone https://github.com/icinga/icinga2.git
cd icinga2

echo "Building Icinga 2 in $(pwd)\n"

mkdir -p release
cd release

echo "Preparing CMake in $(pwd)\n"
# Unity builds off, we're in Docker
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_INSTALL_PREFIX=/tmp/icinga2 -DICINGA2_PLUGINDIR=/tmp/icinga2/sbin -DICINGA2_UNITY_BUILD=OFF ..
cd ..

echo "Running make in $(pwd)\n"
make -C release
make test -C release
make install -C release
/tmp/icinga2/sbin/icinga2 --version
/tmp/icinga2/sbin/icinga2 daemon -C -DRunAsUser=$(id -u -n) -DRunAsGroup=$(id -g -n)

