export PYVERSION2=2.7.15
export PYVERSION3=3.7.0
export RUBYVERSION=2.5.0
export NODEVERSION=v10.8.0
export GOVERSION=1.10.3
#Install for dotfiles

sudo apt update
sudo apt upgrade
sudo apt install libffi-dev zlib1g-dev libssl-dev ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip

mkdir -p ~/.config/nvim/color
cp ./nvim/* ~/.config/nvim/
cp -f ./nvim/color/ ~/.config/nvim/
cp ./.latex* ~/

git config --global user.name try46
git config --global user.email popuman61@gmail.com
git config --global core.editor 'vim -c "set fenc=utf-8"'

	if [[ ! -e 'which zsh' ]]; then
			sudo apt install zsh
	fi
	
	if [[ ! -e 'which tmux' ]]; then
		sudo apt install tmux
  fi

if [[ ! -d '.zprezto' ]]; then
	#statements
	git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi
cp ./.zshrc ~/.zshrc
if [[ ! -e 'which pyenv' ]]; then
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv
	echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
	echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
	echo 'eval "$(pyenv init -)"' >> ~/.zshrc
	source ~/.zshrc


	pyenv install $PYVERSION3
	pyenv install $PYVERSION2

	pyenv global $PYVERSION3
	pip install neovim
fi

if [[ ! -e 'which rbenv' ]]; then
	git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
	git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
 	echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
 	echo 'eval "$(rbenv init -)"' >> ~/.zshrc
 	source ~/.zshrc

 	rbenv install $RUBYVERSION
 	rbenv global $RUBYVERSION
fi

if [[ ! -e 'which ndenv' ]]; then
	git clone https://github.com/riywo/ndenv ~/.ndenv 
	git clone https://github.com/riywo/node-build.git $(ndenv root)/plugins/node-build
	echo 'export PATH="$HOME/.ndenv/bin:$PATH"' >> ~/.zshrc
	echo 'eval "$(ndenv init -)"' >> ~/.zshrc
	source ~/.zshrc
	ndenv install $NODEVERSION
	ndenv global $NODEVERSION
fi


