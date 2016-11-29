# Source this file from system zshrc or symlink

# Gather passwords and keys
if [[ -s ./secrets ]] ; then
    source ./secrets
fi

# Aliases

alias vim=nvim
alias cdc='cd /mnt/c/'
alias cdw='cd /mnt/c/Users/al.ilseman/'
alias cdtd='cd /mnt/c/Supply-Bravo/EventInventory.Applications/Web/TradeDesk/'
alias gaa='git add --all'
alias gcmsg='git commit -m'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Startup ssh-agent
eval $(ssh-agent -s)
