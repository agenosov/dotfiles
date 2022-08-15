# My personal aliases

# Aliases related to Git
alias git_wl='git worktree list'

# Aliases for `Go` tool
alias go_env='less ~/.config/go/env'
alias go_env_help='go help environment'
alias go_mod_help='go mod help'
alias go_modules_help='go help modules'
alias go_path_help='go help gopath'
alias go_tooldir='go env GOTOOLDIR'


# Aliases related to Vim
alias svim='vim -u ~/.SpaceVim/vimrc'
# List Vim sessions
alias vim_sessions='ls -clt ~/.vim/session/'


# Aliases related to VirtualBox
alias vms='vboxmanage list runningvms'
alias vbox='vboxmanage'


# Vagrant
alias vagrant='/opt/vagrant'


# Intel VTune
alias vtune_activate='export INTEL_LIBITTNOTIFY64=/opt/intel/oneapi/vtune/latest/lib64/runtime/libittnotify_collector.so'
