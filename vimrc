set nocompatible

filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
 
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'https://github.com/vim-scripts/a.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/Townk/vim-autoclose'
Plug 'scrooloose/syntastic'
Plug 'ervandew/supertab'
Plug 'vim-scripts/BufOnly.vim'
Plug 'godlygeek/tabular'

Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'

Plug 'vim-scripts/c.vim'
Plug 'apalmer1377/factorus'

Plug 'fatih/vim-go'

Plug 'klen/python-mode'

call plug#end()

filetype plugin indent on

set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

syntax on
set background=dark

"set fileencodings=utf-8,gb2312,gbk,gb18030
"set termencoding=utf-8
"set encoding=euc_cn

let g:easytags_async = 1
set tags=./tags;/
let g:easytags_dynamic_files = 1
let g:easytags_events = ['BufWritePost']
let g:easytags_by_filetype = expand("~/tags")

let g:go_def_mode = 'godef'
