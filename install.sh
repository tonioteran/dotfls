#!/usr/bin/env bash

# Make sure to configure this yourself.
CURDIR="${HOME}/repos/dotfls"

# tmux.
ln -s ${CURDIR}/.tmux.conf ~/.tmux.conf
tmux kill-server

# vim.
ln -s ${CURDIR}/.vimrc ~/.vimrc
cp -r ${CURDIR}/vim_colors/ ~/.vim/colors/
