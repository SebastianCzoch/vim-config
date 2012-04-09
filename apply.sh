#!/bin/bash

cd ~/ 
mkdir -p .fonts
cp .vim/font/UbuntuMono-R-Powerline.otf .fonts/
ln -s .vim/vimrc .vimrc
fc-cache
