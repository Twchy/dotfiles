# Environment
export TERM=xterm-256color
export PATH="/opt/homebrew/opt/python@3.11/libexec/bin:$PATH"

# Starship prompt
eval "$(starship init zsh)"

# Node-Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix nvm)/nvm.sh" ] && \. "$(brew --prefix nvm)/nvm.sh"
[ -s "$(brew --prefix nvm)/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix nvm)/etc/bash_completion.d/nvm"


# Homebrew
alias brewedit="nvim ~/Personal/dotfiles/Brewfile"
alias brewsync="HOMEBREW_NO_AUTO_UPDATE=1 brew bundle --file=~/Personal/dotfiles/Brewfile --no-upgrade && brew bundle cleanup --file=~/Personal/dotfiles/Brewfile --force"

# Quick navigation
alias dotfiles="cd ~/Personal/dotfiles"
alias devprojects="cd ~/Dev/Projects/"
alias workdev="cd ~/Work"

# Git shortcuts
alias gadd="git add"
alias gc="git commit -m"
alias gcm="git commit --amend"
alias gp="git push"


eval "$(/Users/tw/.local/bin/mise activate zsh)"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/tw/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
