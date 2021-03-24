#!/bin/bash

this_dir="$(pwd -P)"

for target_file in .bash_aliases .bashrc.personal
do  
    rm -f ~/$target_file
    ln -s $this_dir/$target_file ~/$target_file
done
