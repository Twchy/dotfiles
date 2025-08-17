export TERM=xterm-256color
export PATH="/opt/homebrew/opt/python@3.11/libexec/bin:$PATH"

#Starship
eval "$(starship init zsh)"

# Aliases
alias brewedit="nvim ~/Personal/dotfiles/Brewfile"
alias brewsync="HOMEBREW_NO_AUTO_UPDATE=1 brew bundle --file=~/Personal/dotfiles/Brewfile --no-upgrade && brew bundle cleanup --file=~/Personal/dotfiles/Brewfile --force"
alias dotfiles="cd ~/Personal/dotfiles"
alias devprojects="cd ~/Development/Projects/"
alias workdev="cd ~/Work"
# Git
alias gadd="git add"
alias gc="git commit -m"                                                                                              
alias gcm="git commit --amend"
alias gp="git push"