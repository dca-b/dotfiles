"""""""""
" Plugins
"""""""""

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'

Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-surround'
call plug#end()


nnoremap <C-n> :NERDTreeToggle<CR>

nnoremap <C-p> :FZF<CR>
nnoremap <C-h> :History<CR>
nnoremap <C-b> :Buffers<CR>
" apt install ripgrep
nnoremap <C-f> :Rg<CR>


"""""""""
" General
"""""""""

syntax enable
set background=dark
try
    colorscheme gruvbox
    "color solarized
    "color palenight
catch
endtry

if (has("termguicolors"))
  set termguicolors
endif

set laststatus=2


set number
set paste
set clipboard=unnamedplus " apt install vim-gtk
set autoindent
set smartindent
filetype plugin indent on


set mousehide
set mouse=

setlocal nospell
set nospell

set encoding=utf8
set tenc=utf8
set fileencoding=utf8

set term=$TERM

" Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif


set history=1000
set autoread
set so=8
set ruler
set showmatch 
set nowrap

set wildmenu
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

set ignorecase
set smartcase
set hlsearch
set incsearch 

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4 softtabstop=4