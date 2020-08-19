#!/bin/sh
git submodule update --init --recursive
aclocal \
&& automake --gnu -a -c \
&& autoconf -o configure-ci autoconf-ci.ac
./configure-ci $@
