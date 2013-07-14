#!/bin/sh

for i in .bash_profile .bashrc .gitconfig .vimrc; do
  cp -fv "$HOME/dotfiles/${i}" "$HOME/${i}"
  # if [ -f "${HOME}/${i}" ]; then
  #   # echo "~/${i} already exists"
  #   ls -l ~/${i}
  # else
  #   echo "dotfiles/${i} -> ~/${i}"
  # fi
done

cd ~
if [ ! -d ~/.vim/bundle ]; then
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

mkdir -p ~/tmp


