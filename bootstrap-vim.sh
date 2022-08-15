#!/bin/bash

this_dir="$(pwd -P)"
for target_file in .vimrc .vimrc.local
do  
    rm -f ~/$target_file
    ln -s $this_dir/$target_file ~/$target_file
done

mkdir -p ~/.vim/after/ftplugin
rm -f ~/.vim/after/ftplugin/sh.vim
ln -s $this_dir/sh.vim ~/.vim/after/ftplugin/sh.vim

# Install necessary plugins for Pathogen
plugins_dir=~/.vim/bundle
git clone https://github.com/mileszs/ack.vim.git $plugins_dir/ack.vim
git clone https://github.com/dense-analysis/ale.git $plugins_dir/ale
git clone https://github.com/ctrlpvim/ctrlp.vim.git $plugins_dir/ctrlp.vim
git clone https://github.com/fatih/vim-go.git $plugins_dir/vim-go
git clone https://github.com/xolox/vim-notes.git $plugins_dir/vim-notes

ln -s ~/.vim/bundle/vim-notes/misc/notes/user ~/vim_notes
