" install vim-plug
if has('vim_starting')
	set rtp+=~/.vim/plugged/vim-plug
	if !isdirectory(expand('~/.vim/plugged/vim-plug'))
		echo 'install vim-plug...'
		call system('mkdir -p ~/.vim/plugged/vim-plug')
		call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
    echo 'finish install vim-plug'
	end
endif
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tomasr/molokai'
Plug 'Shougo/deoplete.nvim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'lighttiger2505/deoplete-vim-lsp'
Plug 'ujihisa/neco-look'
Plug 'prabirshrestha/async.vim'
call plug#end()
for setting_file in split(glob('~/.config/nvim/*.vim'),'\n')
	if match(fnameescape(setting_file), 'init.vim') == -1
		execute 'source' setting_file
	endif
endfor
let g:python3_host_prog = '/Users/tkrmt/.anyenv/envs/pyenv/shims/python'
let g:python2_host_prog = '/Users/tkrmt/.anyenv/envs/pyenv/shims/python'

set number
colorscheme molokai
 set t_Co=256
 augroup PrevimSettings
   autocmd!
   autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
 augroup END

set expandtab
set tabstop=2
set shiftwidth=2
hi SpecialKey ctermfg=darkmagenta
set list listchars=tab:¦_
set guicursor = 
set encoding=UTF-8
