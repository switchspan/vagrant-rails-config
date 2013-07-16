#!/usr/bin/env bash
# Set up rails dev environment on Ubuntu 12.04
# part 2

# install ruby-build
mkdir ~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
exec $SHELL -l

yes | rbenv install 1.9.2-p320
yes | rbenv install 1.9.3-p194
rbenv rehash

# set global bundler gem install path
# from within a project with a Gemfile
yes | bundle config path .bundle/gems