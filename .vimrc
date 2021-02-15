set undofile
set number
set ignorecase
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

#Sets ' as indentation mark in python files
#Does not work with expanded tabs (spaces)
#autocmd Filetype python setlocal noexpandtab listchars=tab:\'\  list

#Changes tabs to spaces upon saving file
#This in order to make indentation marks work
#autocmd BufEnter *.py setlocal noexpandtab 
#autocmd BufEnter *.py execute ':%retab!'
#autocmd BufLeave,BufWrite *.py setlocal expandtab 
#autocmd BufLeave,BufWrite *.py execute ':%retab!'
