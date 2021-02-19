#!/usr/bin/env sh

#### /vagrant/bootstrap.sh - install system-wide program

add-apt-repository ppa:avsm/ppa
apt-get update

DEBIAN_FRONTEND=noninteractive apt-get install -y \
	git vim cmake autoconf automake \
	llvm-10 libclang-10-dev clang-10 \
	python2.7 python3 python3-pip \
	golang-go opam \
	flex bison bc libncurses5-dev \
	libelf-dev libssl-dev libgmp-dev \
	libmpfr-dev libsqlite3-dev sqlite3
