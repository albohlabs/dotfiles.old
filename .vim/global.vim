set nocompatible
if has('syntax') && !exists('g:syntax_on')
  syntax enable     " Turn on syntax highlighting
endif

if has('autocmd')
  filetype plugin indent on   " Turn on Filetype detection, plugins, and indent
endif

filetype indent on

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

" enable setting title
set title
" configure title to look like: Vim /path/to/file
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

" ----------------------------------------------------------------------------
"  folding
" ----------------------------------------------------------------------------
set foldmethod=syntax   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set foldenable
set foldlevel=99

" ----------------------------------------------------------------------------
"  moving around, searching and patterns
" ----------------------------------------------------------------------------
set ignorecase
set smartcase
set incsearch        " Find the next match as we type the search


set showmatch
set autoread         " Reload files changed outside vim
set autowrite
set hlsearch         " Hilight searches by default
set viminfo='100,f1  " Save up to 100 marks, enable capital marks

" ----------------------------------------------------------------------------
"  multiple windows
" ----------------------------------------------------------------------------
set hidden          " allow switching away from current buffer w/o writing

" ----------------------------------------------------------------------------
"  tabs and indenting
" ----------------------------------------------------------------------------
set autoindent                           "automatic indentation in non-C files
set smartindent
set smarttab

" ----------------------------------------------------------------------------
"  editing text
" ----------------------------------------------------------------------------
set backspace=indent,eol,start           "allow backspacing over everything in insert mode

" List chars same as Textmate
set listchars=tab:▸\ ,eol:¬
set relativenumber
set number

" ----------------------------------------------------------------------------
"  the swap file
" ----------------------------------------------------------------------------
set directory=~/tmp,/var/tmp,/tmp

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

set undodir=~/.vim/backups
set undofile
set undolevels=1000
set undoreload=10000

" ----------------------------------------------------------------------------
"  multi-byte characters
" ----------------------------------------------------------------------------
set encoding=utf-8

" ----------------------------------------------------------------------------
"  command line editing
" ----------------------------------------------------------------------------
set wildmenu                             "make tab completion act more like bash
set wildmode=longest,list:longest
set wildignore=*.o,*.obj,*~              " stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=*vendor/rails/**
set wildignore+=*vendor/cache/**
set wildignore+=*.gem
set wildignore+=*log/**
set wildignore+=*tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=.git,.svn,node_modules

set history=200     " Store lots of :cmdline history

" ----------------------------------------------------------------------------
"  displaying text
" ----------------------------------------------------------------------------
set scrolloff=0         " number of screen lines to show around the cursor
set sidescrolloff=15    " min # of columns to keep left/right of cursor"
set sidescroll=1
set linespace=3
set nowrap              " Don't wrap lines

" ----------------------------------------------------------------------------
"  messages and info
" ----------------------------------------------------------------------------
set ruler            " Always display the current cursor position in the Status Bar
set showcmd          " In the status bar, show incomplete commands as they are typed

set hlsearch
set gdefault
set magic

" ----------------------------------------------------------------------------
"  syntax, highlighting and spelling
" ----------------------------------------------------------------------------
set background=dark

if exists('+colorcolumn')       " display a line in column 100 to show you when to line break.
  set colorcolumn=100           " highlight lines over 100 characters
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
endif

" ----------------------------------------------------------------------------
" GUI
" ----------------------------------------------------------------------------
set guifont=Source\ Code\ Pro\ for\ Powerline:h12
set bs=2
set ai

set sw=4 ts=4 sts=4     " Defaults: four spaces per tab
set et                  " expand tabs into spaces

" ----------------------------------------------------------------------------
" Autocmds
" ----------------------------------------------------------------------------
autocmd FileType css,json,javascript,less :setlocal sw=2 ts=2 sts=2
autocmd FileType html,php,phtml :setlocal sw=4 ts=4 sts=4

" ----------------------------------------------------------------------------
" File handling and settings
" -----------------------------------------------------------------------------
if !exists("autocommands_loaded")
  let autocommands_loaded = 1

  " File type settings on load
  au BufRead,BufNewFile *.scss set filetype=scss
  au BufRead,BufNewFile *.markdown,*.md set filetype=markdown
  au BufRead,BufNewFile *.json set filetype=json
  au BufRead,BufNewFile *.jade set ft=jade syntax=jade
endif

" Restore Last Position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" movement keys like Bash
:cnoremap <C-a>  <Home>
:cnoremap <C-b>  <Left>
:cnoremap <C-f>  <Right>
:cnoremap <C-d>  <Delete>
:cnoremap <M-b>  <S-Left>
:cnoremap <M-f>  <S-Right>
:cnoremap <M-d>  <S-right><Delete>
:cnoremap <Esc>b <S-Left>
:cnoremap <Esc>f <S-Right>
:cnoremap <Esc>d <S-right><Delete>
:cnoremap <C-g>  <C-c>
