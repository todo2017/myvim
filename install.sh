#!/bin/bash

mv ~/.vimrc ~/.vimrc.bak.$(date +%Y%m%d%H%M%S)
mv ~/.vim  ~/.vim.bak.$(date +%Y%m%d%H%M%S)
cp -fr vim ~/.vim
cp -f vimrc ~/.vimrc
yum install -y python-devel
cd ~/.vim/bundle/YouCompleteMe/ && ./install.py --clang-completer
