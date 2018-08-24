#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias vim='nvim'
alias ks="ls -G"
alias cc='clear'
alias cf='clang-format'
alias ee='exit'
alias lmk='latexmk -pvc'
alias vi='nvim'
alias rain='rainbowstream -iot'
#alias tomcatstart=' /usr/local/Cellar/tomcat@8/8.5.28/bin/catalina start'
#alias tomcatstop=' /usr/local/Cellar/tomcat@8/8.5.28/bin/catalina stop'
alias inet='ifconfig | grep inet'
export EDITOR=vim
#export PATH="/usr/local/opt/tomcat@8/bin:$PATH"
#setup goenv
#export PATH="$HOME/.goenv/bin:$PATH"
#eval "$(goenv init -)"
#export GOPATH=$HOME/go
#alias jn= 'jupyter notebook'
#setup rbenv 
#eval "$(rbenv init -)"
#alias vagrantup='vagrant up && vagrant ssh'
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux
