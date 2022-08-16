#!/bin/bash

this_dir="$(pwd -P)"
for target_file in .vimrc .vimrc.local
do  
    rm -f ~/$target_file
    ln -s $this_dir/$target_file ~/$target_file
done
