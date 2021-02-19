
#### /vagrant/bash_profile

# llvm
export LLVM_HOME=/usr/lib/llvm-10
export PATH=${LLVM_HOME}/bin:${PATH}
export LLVM_COMPILER=clang

# python venv
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON="$(which python3)"
source ~/.local/bin/virtualenvwrapper.sh

