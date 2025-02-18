VIM="nvim"

# NVM Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GIT_EDITOR=$VIM

# Go Path
export PATH=$PATH:/usr/local/go/bin

# Local Path
export PATH=$PATH:/home/$USER/.local/bin

# Starship
eval "$(starship init zsh)"

#Aliases
# Git
alias gadd="git add"
alias gc="git commit -m"
alias gcm="git commit --amend"
alias gp="git push origin HEAD"
alias gpf="git push -f origin HEAD"

# Delete .DS_Store
alias dsd="find . -name ".DS_Store" -print -delete"

# Tmux
alias tmux='TERM=xterm-256color tmux'

# Other
bindkey "^[[3~" delete-char
bindkey "^[[5~" history-beginning-search-backward
bindkey "^[[6~" history-beginning-search-forward

