export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

alias c='clear'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias clean='sudo apt-get autoclean && sudo apt-get autoremove'
alias e='emacs -nw'
alias l='ls'
alias lh='ls -a | egrep "^\."'

#Perform mkdir and cd using a single command
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

alias pushd='pd'
alias popd='pop'
alias d='dirs -v'

alias sh='sudo shutdown -h now'
