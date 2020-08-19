#!/bin/sh
git submodule update --init --recursive
aclocal \
&& automake --gnu -a -c \
&& autoconf -o configure-ci configure-ci.ac
./configure-ci $@
