export PYVERSION2=2.7.15
export PYVERSION3=3.6.0
export RUBYVERSION=2.5.0
export GOVERSION=1.10.3
#Install for dotfiles
mkdir -p ~/.config/nvim/color
cp ./nvim/* ~/.config/nvim/
cp -f ./nvim/color/ ~/.config/nvim/
cp ./.latex* ~/
cp ./.tmux.conf ~/
# setup git 
git config --global user.name try46
git config --global user.email popuman61@gmail.com
git config --global core.editor 'vim -c "set fenc=utf-8"'

#setup xcode

#install homebrew

brew tap caskroom/cask 
brew tap homebrew/cask-fonts
brew tap neovim/neovim
brew tap rogual/neovim-dot-app

brew install tmux zsh git nvim pyenv rbenv goenv yarn


