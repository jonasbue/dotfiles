set undofile
set number
set ignorecase
set autoindent
set tabstop=4
set shiftwidth=4

autocmd Filetype python setlocal noexpandtab listchars=tab:\'\  list

autocmd BufEnter *.py setlocal noexpandtab 
autocmd BufEnter *.py execute ':%retab!'
autocmd BufLeave,BufWrite *.py setlocal expandtab 
autocmd BufLeave,BufWrite *.py execute ':%retab!'
