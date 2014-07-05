#!/bin/bash


CURRENT_DIR=`pwd`

cp $CURRENT_DIR/vimrc $HOME/.vimrc

if [ ! -e $HOME/.vim/bundle/Vundle.vim ]; then
    echo "Installing Vundle"
    git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

echo "Done!"
