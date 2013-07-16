#!/usr/bin/env bash
# Set up rails dev environment on Ubuntu 12.04
# part 3

# install ruby versions 1.9.2 and 1.9.3
yes | rbenv install 1.9.2-p320
yes | rbenv install 1.9.3-p194
yes | rbenv install 2.0.0-rc2
rbenv rehash

# install bundler for the system ruby version
yes | sudo gem install bundler

# set global bundler gem install path
# from within a project with a Gemfile
yes | bundle config path .bundle/gems

# install bundler and rails in all of the other configs
rbenv global 1.9.2-p320
gem install bundler
gem install rails -v 3.2
rbenv global 1.9.3-p194
gem install bundler
gem install rails -v 3.2
rbenv global 2.0.0-rc2
gem install bundler
gem install rails
rbenv global system