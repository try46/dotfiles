if [ -e ~/.config/nvim ]; then
  echo "Start NeoVim SetUP!!"
else
  mkdir ~/.config/nvim
fi

eval $(python3 -c "import glob,os;print('declare -a array=(', ' '.join(list(map(lambda x: os.path.split(x)[1], glob.glob('/Users/tkrmt/.dotfiles/nvim/plugin/*.vim')))), ')')") 
for ((i = 0; i < ${#array[@]}; i++)) { 
  ln -s ~/.dotfiles/nvim/plugin/${array[i]} ~/.config/nvim/${array[i]};
}
