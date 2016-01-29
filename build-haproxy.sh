#!/bin/sh

cd /usr/src
wget http://www.haproxy.org/download/1.6/src/haproxy-1.6.3.tar.gz
tar xf haproxy-*.tar.gz
cd haproxy-*
make -j4 TARGET=custom CPU=native USE_PCRE=1 USE_LIBCRYPT=1 USE_LINUX_SPLICE=1 USE_LINUX_TPROXY=1 USE_OPENSSL=1
make -j4 install
cd /
rm -rf /usr/src
