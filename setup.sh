export PYVERSION2 = 2.7.15
export PYVERSION3 = 3.7.0
export RUBYVERSION = 2.5.0
export GOVERSION = 1.10.3
#Install for dotfiles
mkdir -p ~/.config/nvim/color
cp ./nvim/* ~/.config/nvim/
cp -f ./nvim/color/ ~/.config/nvim/
cp ./.latex* ~/

git config --global user.name try46
git config --global user.email popuman61@gmail.com

if [[ 'uname'=='Darwin' ]]; then
	#statements
	if [[ ! -e 'which zsh' ]]; then
		#statements
		brew install zsh
	elif [[ ! -d '.zprezto' ]]; then
			#statements
		git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
		cp ./.zshrc ~/.zshrc
	elif [[ ! -e 'which tmux' ]]; then
		brew install tmux
	fi
# Install for Middleware mac
fi

#Install pyenv rbenv goenv
if [[ 'uname'=='Linux' ]]; then
		elif [[ ! -e 'which zsh' ]]; then
			sudo apt install zsh
		elif [[ ! -d '.zprezto' ]]; then
				#statements
		git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
		cp ./.zshrc ~/.zshrc
	elif [[ ! -e 'which tmux' ]]; then
		sudo apt install tmux

fi

if [[ ! -e 'which pyenv' ]]; then
	git clone https://github.com/pyenv/pyenv.git
	echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
	echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
	echo 'eval "$(pyenv init -)"' >> ~/.zshrc
	source ~/.zshrc

	pyenv install $PYVERSION3
	pyenv install $PYVERSION2

	pyenv global $PYVERSION3
	pip install neovim
fi


