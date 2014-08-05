#!/bin/bash
#This will install rbenv and ruby 2.1.2 and nodejs
#from: https://gorails.com/setup/ubuntu/14.04

GIT_USERNAME="eflukx"
EMAIL="your@email.com"

echo installing some packages
  sudo apt-get update
  sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties

echo setting up node.js
  sudo add-apt-repository ppa:chris-lea/node.js
  sudo apt-get update
  sudo apt-get install nodejs

echo setting up git
  git config --global color.ui true
  git config --global user.name "$GIT_USERNAME"
  git config --global user.email "$EMAIL"
  ssh-keygen -t rsa -C "$EMAIL"
  cat ~/.ssh/id_rsa.pub
  ssh -T git@github.com

echo setting up rbenv...
  cd ~
  git clone git://github.com/sstephenson/rbenv.git .rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(rbenv init -)"' >> ~/.bashrc
  exec $SHELL
  
  git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
  exec $SHELL
  
  rbenv install 2.1.2
  rbenv global 2.1.2
  ruby -v

echo please log out and in to init rbenv...
