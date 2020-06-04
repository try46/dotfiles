" "--------dein---------
" let s:dein_dir = expand('~/.cache/dein')
" let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" if &runtimepath !~# '/dein.vim'
"   if !isdirectory(s:dein_repo_dir)
"     execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
"   endif
"   execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
" endif

" if dein#load_state(s:dein_dir)
"   call dein#begin(s:dein_dir)

"   let g:rc_dir    = expand('~/.config/nvim')
"   let s:toml      = g:rc_dir . '/dein.toml'
"   let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

"   call dein#load_toml(s:toml,      {'lazy': 0})
"   call dein#load_toml(s:lazy_toml, {'lazy': 1})
"   " Required:
"   call dein#end()
"   call dein#save_state()
" endif

" " Required:
" filetype plugin indent on
" syntax enable
" " If you want to install not installed plugins on startup.
" if dein#check_install()
"   call dein#install()
" endif

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
"Plug 'junegunn/vim-plug'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
call plug#end()
for setting_file in split(glob('~/.config/nvim/*.vim'),'\n')
	if match(fnameescape(setting_file), 'init.vim') == -1
		execute 'source' setting_file
		" echo setting_file
	endif
endfor
"let g:python3_host_prog = '/usr/local/bin/python3'
" let g:python3_host_prog = '/Users/tkrmt/.anyenv/envs/pyenv/shims/python'
" "End dein Scripts-------------------------
" let g:deoplete#enable_at_startup = 1


" let g:jedi#force_py_version = 3
" ""vim-latex
" set shellslash
" set grepprg=grep\ -nH\ $*
" let g:tex_flavor='latex'
" "let g:Imap_UsePlaceHolders = 1
" "let g:Imap_DeleteEmptyPlaceHolders = 1
" "let g:Imap_StickyPlaceHolders = 0
" "let g:Tex_DefaultTargetFormat = 'pdf'
" "let g:Tex_MultipleCompileFormats='dvi,pdf'
" ""let g:Tex_FormatDependency_pdf = 'pdf'
" "let g:Tex_FormatDependency_pdf = 'dvi,pdf'
" "let g:Tex_CompileRule_pdf = 'ptex2pdf -u -l -ot "-synctex=1 -interaction=nonstopmode -file-line-error-style" $*'
" ""let g:Tex_CompileRule_pdf = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
" "let g:Tex_CompileRule_dvi = 'uplatex -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
" "let g:Tex_BibtexFlavor = 'upbibtex'
" "let g:Tex_MakeIndexFlavor = 'upmendex $*.idx'
" "let g:Tex_UseEditorSettingInDVIViewer = 1
" "let g:Tex_ViewRule_pdf = 'Skim'
" ""let g:Tex_ViewRule_pdf = 'open -a Skim'
" ""let g:Tex_ViewRule_pdf = 'open -a Preview'
" ""let g:Tex_ViewRule_pdf = 'open -a TeXShop'
" ""let g:Tex_ViewRule_pdf = '/Applications/TeXworks.app/Contents/MacOS/TeXworks'
" ""let g:Tex_ViewRule_pdf = '/Applications/texstudio.app/Contents/MacOS/texstudio --pdf-viewer-only'
" ""let g:Tex_ViewRule_pdf = 'open -a Firefox'
" ""let g:Tex_ViewRule_pdf = 'open -a "Adobe Acrobat Reader DC"'
" ""let g:Tex_ViewRule_pdf = 'open'"
set number
" colorscheme molokai
" set t_Co=256
" augroup PrevimSettings
"   autocmd!
"   autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
" augroup END
" " SuperTab like snippets behavior.
" set expandtab
" set tabstop=2
" set shiftwidth=2
" hi SpecialKey ctermfg=darkmagenta
" set list listchars=tab:¦_
" set guicursor = 
" let g:lightline = {
"       \ 'colorscheme':'wombat',
"       \ 'active':
"       \     {'left': [ [ 'mode', 'paste' ],
"       \     [ 'gitbranch','readonly', 'filename', 'modified' ] ]
"       \   },
"       \  'component_function':{
"       \     'gitbranch': 'gitbranch#name'
"       \ },
"       \ }
