#!/bin/bash

sudo yum install -y emacs

#prep for installing rbenv
sudo yum install -y gcc-c++ glibc-headers openssl-devel readline libyaml-devel readline-devel zlib zlib-devel
sudo yum install -y gcc sqlite-devel libicu-devel cmake postgresql-server

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

rbenv install -l
rbenv install 2.5.3
rbenv global 2.5.3
ruby --version

gem install rails

