#!/bin/bash
VERSION=3.0a

# sudo apt-get -y remove tmux # if you want remove old one
sudo apt-get -y install libncurses5-dev libncursesw5-dev
sudo apt-get -y install wget tar libevent-dev libncurses-dev

wget https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz
tar xf tmux-${VERSION}.tar.gz
rm -f tmux-${VERSION}.tar.gz

cd tmux-${VERSION}
./configure
make
sudo make install
