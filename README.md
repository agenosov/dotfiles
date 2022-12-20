## Settings for Bash

* Separate files for keeping settings for environment on the current work and personal settings. Include in the `~/.bashrc`:
```bash
# Add project specific settings
source ~/.bashrc.local

# Add personal settings
source ~/.bashrc.personal
```

Personal aliases are defined in the `~/.bash_aliases`.


## Settings for Vim

* First, install Vim from sources
  * get latest Vim
  * cd ~/vim/src
  * ./configure
  * make
  * sudo make install

* Even if Vim was installed via package manager, after the previous steps the actual version would be available in `/usr/local/bin`  

## Settings for Neovim

* follow the instructions from `:help nvim-from-vim`
* cp ~/.vim/autoload/plug.vim ~/.local/share/nvim/site/autoload
* :PlugInstall
