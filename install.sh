#!/usr/bin/env bash

# Make sure to configure this yourself.
CURDIR="${HOME}/repos/dotfls"

# tmux.
ln -s ${CURDIR}/.tmux.conf ~/.tmux.conf
tmux kill-server

# vim - don't forget to run :BundleInstall afterwards inside vim.
ln -s ${CURDIR}/.vimrc ~/.vimrc
cp -r ${CURDIR}/vim_colors/ ~/.vim/colors/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/tools
cp ${CURDIR}/clang-format.py ~/tools
