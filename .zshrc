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
alias cf='clang-format'
alias ee='exit'
alias lmk='latexmk -pvc'
alias vi='nvim'
alias rain='rainbowstream -iot'
alias tomcatstart=' /usr/local/Cellar/tomcat/9.0.16/bin/catalina start'
alias tomcatstop=' /usr/local/Cellar/tomcat/9.0.16/bin/catalina stop'
alias inet='ifconfig | grep inet'
alias gvim='/usr/local/Cellar/neovim-dot-app/0.1.5/Neovim.app/Contents/MacOS/Neovim'
export EDITOR=vim
export PATH="/usr/local/opt/tomcat@8/bin:$PATH"
#setup goenv
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"
export GOPATH=$HOME/go
#setup rbenv 
#eval "$(rbenv init -)"
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
export PATH="/usr/local/opt/sqlite/bin:$PATH"
alias jn='jupyter-notebook'
alias gd='cd /Users/try/Google\ Drive\ File\ Stream/マイドライブ'
export XDG_CONFIG_HOME=$HOME/.config
test -e "${HOME}/.iterm3_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
alias kougi='cd ~/Desktop/TUT-KOUGI2/3/second/'
fpath=(/usr/local/share/zsh-completions $fpath)
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew"
alias dex2jar="/Users/try/Desktop/dex2jar-2.0/d2j-dex2jar.sh"
export PATH=$PATH:/Users/try/Library/Android/sdk/platform-tools

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
alias md="/usr/local/bin/macdown"
alias dockerfullrm="sudo docker ps -a | awk 'NR>1 {print $1}' | xargs docker rm -f"
alias dockerfullrmimage="sudo docker images | awk 'NR>1 {print $3}' | xargs docker rmi"
alias dcstart="docker-compose up -d"
alias dcstop="docker-compose stop"
#alias monaca="/usr/local/Cellar/node/11.1.0/lib/node_modules/monaca/bin/monaca"
#alias activate="source /Users/try/.pyenv/versions/anaconda3-5.2.0/bin"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"
alias emacs="nvim"
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux
export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"
figlet 'welcome to try.local'
alias vs='code'
export PATH=$HOME/.nodebrew/current/bin:$PATH
alias py='python'
export CFLAGS="-I$(brew --prefix readline)/include -I$(brew --prefix openssl)/include -I$(xcrun --show-sdk-path)/usr/include"
export LDFLAGS="-L$(brew --prefix readline)/lib -L$(brew --prefix openssl)/lib"
export PYTHON_CONFIGURE_OPTS="--enable-unicode=ucs2"
export PATH=$PATH:$HOME/.pyenv/shimsi
alias gitreset='git rm -r --cached .'
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export LDFLAGS="-L/usr/local/opt/php@7.2/lib"
export CPPFLAGS="-I/usr/local/opt/php@7.2/include"
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"
eval "$(pyenv init -)"
export PATH="/Users/try/.pyenv/versions/anaconda3-5.3.1/bin:$PATH"
export PATH="/Users/try/.config/composer/vendor/bin:$PATH"
fpath=(/usr/local/bin/zsh/5.7/functions ${fpath})
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home"
export ANDROID_HOME="/Users/try/Library/Android/sdk"
export PATH="/Applications/Android Studio.app/Contents/gradle/gradle-4.10.1/bin:$PATH"
