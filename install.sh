#!/usr/bin/env bash

# Make sure to configure this yourself.
CURDIR="~/repos/dotfls"

ln -s ${CURDIR}/.tmux.conf ~/.tmux.conf
tmux kill-server
