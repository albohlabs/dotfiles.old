" tagbar
noremap <silent> <Leader>y :TagbarToggle<CR>
let g:tagbar_width = 40
let g:tagbar_type_php  = {
\ 'ctagstype' : 'php',
\ 'kinds'     : [
        \ 'i:interfaces',
        \ 'c:classes',
        \ 'd:constant definitions',
        \ 'f:functions',
        \ 'j:javascript functions:1'
    \ ]
\ }

" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden= 1
let g:NERDTreeWinSize = 40

let g:nerdtree_tabs_open_on_gui_startup = 0

map <leader>r :NERDTreeFind<cr>
map <Leader>n :NERDTreeToggle<CR>

let g:ctrlp_map = '<Leader>t'
map <Leader>b :CtrlPBuffer<CR>
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0

" neocomplcache 
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" let g:neosnippet#snippets_directory='~/.vim/snippets'

let g:DisableAutoPHPFolding = 1

" javascript-libraries-syntax.vim
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1

" pymode
let g:pymode_run = 0
let g:pymode_options_max_line_length = 100
let g:pymode_indent = 1

