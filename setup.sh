#!/bin/sh

cp .vimrc ~

cd ~
if [ ! -d ~/.vim/bundle ]; then
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

mkdir -p ~/tmp




