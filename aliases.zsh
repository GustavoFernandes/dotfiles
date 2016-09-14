alias ls='ls -AG'
alias f='open .'

# Git
alias g='git number'
alias ga='git number add'
alias gcm='git commit -m'
alias gco='git number checkout'
alias gd='git diff --color-words="\\w+|."'
alias gdc='git diff --color-words="\\w+|." --cached'
alias gf='git fetch --all -p'

# Buildr
alias bcp='buildr clean package'
alias bcpe='buildr clean package eclipse'
alias bcaspe='buildr clean artifacts:sources package eclipse'

# Servers
alias ws='python -m SimpleHTTPServer'
