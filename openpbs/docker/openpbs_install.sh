#!/bin/bash

#https://github.com/openpbs/openpbs/blob/master/INSTALL

dnf install -y dnf-plugins-core
dnf config-manager --set-enabled powertools

dnf install -y gcc make rpm-build libtool hwloc-devel \
  libX11-devel libXt-devel libedit-devel libical-devel \
  ncurses-devel perl postgresql-devel postgresql-contrib python3-devel tcl-devel \
  tk-devel swig expat-devel openssl-devel libXext libXft \
  autoconf automake gcc-c++
