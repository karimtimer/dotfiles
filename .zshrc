# Path to your oh-my-zsh installation.
# not for vagrant
# export ZSH="/Users/ktimer/.oh-my-zsh"
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
HIST_STAMPS="dd/mm/yyyy"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# export COUNTRY=de carwow restart core && CARWOW=de carwow restart sites
alias set_uk=COUNTRY=uk carwow restart core && CARWOW=uk carwow restart sites
alias set_de=COUNTRY=de carwow restart core && CARWOW=de carwow restart sites
alias set_es=COUNTRY=es carwow restart core && CARWOW=es carwow restart sites
alias rubocop='carwow run bundlex exec rubocop'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias config='/usr/bin/git --git-dir=/Users/ktimer/.cfg/ --work-tree=/Users/ktimer'

# Make carwow binary and binstubs available to the PATH
export PATH="/projects/carwow/dev-environment/bin:$PATH"
export PATH="/projects/carwow/dev-environment/bin/stubs:$PATH"

export HISTFILE=/projects/carwow/.zsh_history

#some other variables

# Customize to your needs...
cd /projects/carwow
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
