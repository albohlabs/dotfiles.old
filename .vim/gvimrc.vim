
set guioptions=egmrt
set guioptions+=LlRrb            " crazy hack to get gvim to remove all scrollbars
set guioptions-=LlRrb

set guioptions-=T       " Remove toolbar
set guioptions-=t       " Remove tear-off menus
set guioptions+=c       " Use :ex command-mode prompts instead of modal dialogs

" ================ macvim tab key maps ==============

nmap <D-1> 1gt
nmap <D-2> 2gt
nmap <D-3> 3gt
nmap <D-4> 4gt
nmap <D-5> 5gt
nmap <D-6> 6gt
nmap <D-7> 7gt
nmap <D-8> 8gt
nmap <D-9> 9gt
nmap <D-0> 10gt

" Set the title bar to something meaningful
if has('title') && (has('gui_running') || &title)
  set titlestring=
  set titlestring+=%f\                                             " file name
  set titlestring+=%h%m%r%w                                        " flags
  set titlestring+=\ -\ %{v:progname}                              " program name
  set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')} " working directory
endif

map  :bprev     " Swipe left opens a previous hidden buffer
map  :bnext     " Swipe right opens the next hidden buffer

" set background=dark
colorscheme solarized
