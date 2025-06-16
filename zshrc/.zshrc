export TERM=xterm-256color
export PATH="/opt/homebrew/opt/python@3.11/libexec/bin:$PATH"
#NVM
export NVM_DIR="$HOME/.nvm"
    [ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

#Starship
eval "$(starship init zsh)"

# Aliases
alias drbs="darwin-rebuild switch --flake ~/.config/nix-darwin#Maximus"
alias nde="nvim ~/.config/nix-darwin/flake.nix"
alias dotfiles="cd ~/Personal/dotfiles"
alias devprojects="cd ~/Development/Projects/"
# Git
alias gadd="git add"
alias gc="git commit -m"                                                                                              alias gcm="git commit --amend"
alias gp="git push origin HEAD"
alias gpf="git push -f origin HEAD"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Volumes/Macintosh External/.lmstudio/bin"
# End of LM Studio CLI section


### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/tw/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
