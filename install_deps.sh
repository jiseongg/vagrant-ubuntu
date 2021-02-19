#!/usr/bin/env bash

# opam packages
opam init
eval $(opam env)

opam install -y \
	core batteries ocamlbuild llvm z3

# python packages
pip3 install virtualenv virtualenvwrapper

# setup shell environment
cat /vagrant/bash_profile >> /home/vagrant/.bashrc
echo 'eval $(opam env)' >> /home/vagrant/.profile 

