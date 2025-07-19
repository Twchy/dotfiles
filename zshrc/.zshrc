export TERM=xterm-256color
export PATH="/opt/homebrew/opt/python@3.11/libexec/bin:$PATH"
#NVM
export NVM_DIR="$HOME/.nvm"
    [ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

#Starship
eval "$(starship init zsh)"

# Aliases
alias brewedit="nvim ~/Personal/dotfiles/Brewfile"
alias brew-sync="HOMEBREW_NO_AUTO_UPDATE=1 brew bundle --file=~/Personal/dotfiles/Brewfile --no-upgrade && brew bundle cleanup --file=~/Personal/dotfiles/Brewfile --force"
alias dotfiles="cd ~/Personal/dotfiles"
alias devprojects="cd ~/Development/Projects/"
# Git
alias gadd="git add"
alias gc="git commit -m"                                                                                              alias gcm="git commit --amend"
alias gp="git push origin HEAD"
alias gpf="git push -f origin HEAD"
