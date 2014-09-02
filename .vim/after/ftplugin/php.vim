" linter tools
noremap <leader>lp :Shell php -l %<CR>

" PHP CodeSniffer
noremap <leader>c :Shell phpcs %<CR>

let php_sql_query=10    " to highlight SQL syntax in strings
let php_htmlInStrings=1 " to highlight HTML in string
let php_folding = 1     " to enable folding for classes and functions
