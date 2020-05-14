#aliasの設定
alias vi='nvim'
alias ks="ls -G"
alias cf='clang-format'
alias ee='exit'
alias lmk='latexmk -pvc'
alias rain='rainbowstream -iot'
#alias tomcatstart=' /usr/local/Cellar/tomcat/9.0.16/bin/catalina start'
#alias tomcatstop=' /usr/local/Cellar/tomcat/9.0.16/bin/catalina stop'
alias inet='ifconfig | grep inet'
#alias gvim='/usr/local/Cellar/neovim-dot-app/0.1.5/Neovim.app/Contents/MacOS/Neovim'
#alias vagrantup='vagrant up && vagrant ssh'
#alias gcc8="/usr/local/bin/gcc-8"
alias mdir="mkdir {1..15}"
alias kougi='cd ~/Desktop/TUT-KOUGI2/3/second/'
#alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew"
#alias dex2jar="/Users/try/Desktop/dex2jar-2.0/d2j-dex2jar.sh"
alias dockerfullrm="sudo docker ps -a | awk 'NR>1 {print $1}' | xargs docker rm -f"
alias dockerfullrmimage="sudo docker images | awk 'NR>1 {print $3}' | xargs docker rmi"
alias dcstart="docker-compose up -d"
alias dcstop="docker-compose stop"
alias vs='code'
alias py='python'
alias tex="cd /usr/local/texlive/2018/texmf-dist/tex/latex"
#alias dlangactivate="source $(~/dlang/install.sh dmd -a)"
alias codei="/usr/local/bin/code-insiders"
alias vi="nvim"
alias vim="nvim"
alias nya="ssh -Y nya"
alias nyapro="ssh -Y -N -f nyaproxy"
alias tutvpnstart="networksetup -connectpppoeservice TUT"
alias tutvpnstop="networksetup -disconnectpppoeservice TUT"S


set -x EDITOR = vim $PATH
#set -x PATH = /usr/local/opt/tomcat@8/bin $PATH
# goenvの設定
# set -x PATH = $HOME/.goenv/bin $PATH
# eval (goenv init - | source)
# pyenvの設定
#set -x PATH $HOME/.pyenv/bin $PATH
#eval (pyenv init - | source)

#set -x CPPFLAGS = -I/usr/local/opt/qt5/include $PATH
#set -x LDFLAGS = -L/usr/local/opt/qt5/lib $PATH
#set -x PATH /usr/local/opt/libxml2/bin $PATH
#set -x PKG_CONFIG_PATH  = /usr/local/opt/libxml2/lib/pkgconfig $PATH
#set -x LDFLAGS = -L/usr/local/opt/libxml2/lib $PATH
#set -x CPPFLAGS = -I/usr/local/opt/libxml2/include $PATH
#set -x PATH = /usr/local/opt/sqlite/bin $PATH
#set -g theme_nerd_fonts yes
