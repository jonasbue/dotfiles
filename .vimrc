set undofile
set number
set ignorecase
set autoindent
set tabstop=4
set shiftwidth=4
set hlsearch

autocmd Filetype python setlocal noexpandtab listchars=tab:\'\  list

autocmd BufRead *.py setlocal noexpandtab 
autocmd BufRead *.py execute ':%retab!'
autocmd BufWrite *.py setlocal expandtab 
autocmd BufWrite *.py execute ':%retab!'
