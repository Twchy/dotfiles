# Environment
export TERM=xterm-256color
export PATH="/opt/homebrew/opt/python@3.11/libexec/bin:$PATH"

# Starship prompt
eval "$(starship init zsh)"

# Node version manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Homebrew
alias brewedit="nvim ~/Personal/dotfiles/Brewfile"
alias brewsync="HOMEBREW_NO_AUTO_UPDATE=1 brew bundle --file=~/Personal/dotfiles/Brewfile --no-upgrade && brew bundle cleanup --file=~/Personal/dotfiles/Brewfile --force"

# Quick navigation
alias dotfiles="cd ~/Personal/dotfiles"
alias devprojects="cd ~/Development/Projects/"
alias workdev="cd ~/Work"

# Git shortcuts
alias gadd="git add"
alias gc="git commit -m"
alias gcm="git commit --amend"
alias gp="git push"
