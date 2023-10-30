#!/usr/bin/env bash

# Make sure to configure this yourself.
CURDIR="${HOME}/repos/dotfls"

# Bash aliases for convenience.
cp ${CURDIR}/.bash_aliases ~/

# tmux.
ln -s ${CURDIR}/.tmux.conf ~/.tmux.conf
tmux kill-server

# vim - don't forget to run :BundleInstall afterwards inside vim.
ln -s ${CURDIR}/.vimrc ~/.vimrc
cp -r ${CURDIR}/vim_colors/ ~/.vim/colors/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/tools
cp ${CURDIR}/clang-format.py ~/tools
sudo apt install clang-format

# spacemacs - cloning the repo, installing Emacs, setting the dotfile, and font.
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
sudo add-apt-repository universe
sudo apt update
sudo apt install emacs
ln -s ${CURDIR}/.spacemacs ~/.spacemacs
# Source Code Pro font install.
cd ~/Downloads
wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
if [ ! -d "~/.fonts" ] ; then
	mkdir ~/.fonts
fi
# Unzip and copy.
unzip 1.050R-it.zip
cp source-code-pro-*-it/OTF/*.otf ~/.fonts/
rm -rf source-code-pro*
rm 1.050R-it.zip
fc-cache -f -V
