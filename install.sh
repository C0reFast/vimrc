#!/bin/bash


CURRENT_DIR=`pwd`

cp $CURRENT_DIR/vimrc $HOME/.vimrc

if [ ! -e $HOME/.vim/bundle/vundle ]; then
    echo "Installing Vundle"
    git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
fi

echo "Done! Open Vim and run BundleInstall"
