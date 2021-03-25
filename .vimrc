set undofile
set number
set ignorecase
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

filetype plugin on
syntax on

" Uses cursorline in the current window.
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" Scrolling moves through time instead of space:
" <https://xkcd.com/1806/>
" This is goofy, but scrolling in vim isn't reaally efficient is it?
" Additionally, undoing many times (with for example 10u) is simple
" but it feels like jumping blindly. When scrolling, undoing/redoing 
" becomes more visually intuitive and fun as well.
" By the way: No, I have no shame.
set mouse=a
nnoremap <ScrollWheelUp> u
nnoremap <ScrollWheelDown> <C-r>
inoremap <ScrollWheelUp> <Esc>ui
inoremap <ScrollWheelDown> <Esc><C-r>i
