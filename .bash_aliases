# My personal aliases

# Docker aliases
alias docker_env='systemctl show --property=Environment docker'

# Aliases related to Git
#
# List git worktrees
alias git_wl='git worktree list'
# View pretty git log
alias git_pl='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=rfc'
# Verbose cloning
alias git_vclone='GIT_CURL_VERBOSE=1 GIT_TRACE=1  GIT_SSH_COMMAND="ssh -vvv" git clone $@'

# Aliases for `Go` tool
alias go_env='less ~/.config/go/env'
alias go_env_help='go help environment'
alias go_mod_help='go mod help'
alias go_modules_help='go help modules'
alias go_path_help='go help gopath'
alias go_tooldir='go env GOTOOLDIR'


# Aliases related to Vim
# List Vim sessions
alias vim_sessions='ls -clt ~/.vim/session/'


# Aliases related to VirtualBox
alias vms='vboxmanage list runningvms'
alias vbox='vboxmanage'
