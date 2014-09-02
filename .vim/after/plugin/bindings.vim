" Sudo write (,W)
noremap <leader>W :w !sudo tee %<CR>

" Search and replace word under cursor (,*)
nnoremap <leader>* :%s/<C-r><C-w>//<Left>

inoremap kj <ESC>
nnoremap <leader>w <C-w>v<C-w>l

nnoremap <tab> :wincmd w<cr>
nnoremap <s-tab> :wincmd W<cr>

nmap <leader>s :nohlsearch<cr>
" Ctrl-N to disable search match highlight
nmap <silent> <C-N> :silent noh<CR>

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>

" easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" C-TAB and C-SHIFT-TAB cycle tabs forward and backward
nmap <c-tab> :tabnext<cr>
imap <c-tab> <c-o>:tabnext<cr>
vmap <c-tab> <c-o>:tabnext<cr>
nmap <c-s-tab> :tabprevious<cr>
imap <c-s-tab> <c-o>:tabprevious<cr>
vmap <c-s-tab> <c-o>:tabprevious<cr>

" CTRL-j and CTRL-k to next and previous buffer 
" CTRL-l and CTRL-h to next and previous tabs
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>

" sane movement with wrap turned on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Open vimgrep and put the cursor in the right position
map <leader>g :vimgrep // **/*

" Vimgreps in the current file
map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>
