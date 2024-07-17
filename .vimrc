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

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-surround'
call plug#end()

command! -bang -nargs=* OldGrep call fzf#vim#grep('grep -n --line-buffered -r --exclude-dir={node_modules,.svn,.git} --exclude=\*.{a,o} '.shellescape(<q-args>). ' .', 0, fzf#vim#with_preview(), <bang>0)


nnoremap <C-n> :NERDTreeToggle<CR>

nnoremap <C-p> :Files<CR>
nnoremap <C-h> :History<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-f> :Rg<CR>
"nnoremap <C-f> :OldGrep<CR>


"ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow'
  "let $FZF_DEFAULT_COMMAND .= ' --no-ignore-vcs '
  let $FZF_DEFAULT_COMMAND .= ' --glob "!.git/*" --glob "!**/.git/*" '
endif


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


"set number
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
set hidden

set wildmenu
set wildignore+=*.o,*~,*.pyc
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
