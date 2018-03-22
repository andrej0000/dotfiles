#!/bin/bash

ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#
#vim +PluginInstall +qall
#
#apt install -y build-essential cmake
#
#apt install -y python-dev python3-dev
#
#cd ~/.vim/bundle/YouCompleteMe
#./install.py --clang-completer

apt install -y curl wget

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


