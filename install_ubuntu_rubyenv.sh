#!/usr/bin/env bash
# Set up rails dev environment on Ubuntu 12.04

# change mirror to ubuntu.osuosl.org first
yes | sudo apt-get update

# install common libraries
yes | sudo apt-get install build-essential libreadline-dev libssl-dev zlib1g-dev libxml2-dev libxslt-dev

# install the other things
yes | sudo apt-get install vim git-core gitg tmux

# set git defaults
git config --global core.editor vim
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global color.status.changed yellow
git config --global color.status.added green
git config --global color.status.untracked red

# turn off rdoc generation when installing/updating gems
echo "install: --no-ri --no-rdoc" >> ~/.gemrc
echo "update: --no-ri --no-rdoc" >> ~/.gemrc

# install javascript runtime
yes | sudo apt-get install nodejs

# install postgres
yes | sudo apt-get install postgresql libpq-dev
sudo -u postgres createuser --superuser `logname`

# install sqlite3
yes | sudo apt-get install sqlite3 libsqlite3-dev

# install rbenv
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL -l
