#!/bin/bash


CURRENT_DIR=`pwd`

echo "Backing up current vim config"
today=`date +%Y%m%d`
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc $HOME/.vimrc.bundles; do [ -e $i ] && [ ! -L $i ] && mv $i $i.$today; done
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc $HOME/.vimrc.bundles; do [ -L $i ] && unlink $i ; done

cp $CURRENT_DIR/vimrc $HOME/.vimrc

if [ ! -e $HOME/.vim/bundle/Vundle.vim ]; then
    echo "Installing Vundle"
    git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

echo "Done!"
