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

export HISTFILE=${HOME}/.zsh_history
export HISTSEZE=1000
export SAVEHIST=100000
#################
alias vim='nvim'
alias ks="ls -G"
alias cc='clear'
alias cf='clang-format'
alias ee='exit'
alias lmk='latexmk -pvc'
alias vi='nvim'
alias rain='rainbowstream -iot'
alias tomcatstart=' /usr/local/Cellar/tomcat@8/8.5.28/bin/catalina start'
alias tomcatstop=' /usr/local/Cellar/tomcat@8/8.5.28/bin/catalina stop'
alias inet='ifconfig | grep inet'
alias gvim='/Applications/Neovim.app/Contents/MacOS/Neovim'
export EDITOR=vim
export PATH="/usr/local/opt/tomcat@8/bin:$PATH"
#setup goenv
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"
export GOPATH=$HOME/go
#setup rbenv 
eval "$(rbenv init -)"
alias vagrantup='vagrant up && vagrant ssh'
#[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux
export PATH="/usr/local/opt/tomcat@8/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/qt5/include"
export LDFLAGS="-L/usr/local/opt/qt5/lib"
export PATH=/usr/local/opt/qt5/bin:$PATH
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/libxml2/lib/pkgconfig"
export LDFLAGS="-L/usr/local/opt/libxml2/lib"
export CPPFLAGS="-I/usr/local/opt/libxml2/include"
alias gcc8="/usr/local/bin/gcc-8"
alias mdir="mkdir {1..15}"
alias jn="/usr/local/bin/jupyter-notebook"
alias pip="/usr/local/bin/pip3"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
