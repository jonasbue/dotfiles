set undofile
set number
set ignorecase
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set colorcolumn=80
set clipboard=unnamedplus
highlight ColorColumn ctermbg=black

filetype plugin on
syntax on

" Uses cursorline only in the current window.
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" Scrolling moves through time instead of space:
" <https://xkcd.com/1806/>
" Courtesy of someone on the internet (TODO: Add source).
" This is goofy, but scrolling in vim isn't really efficient is it?
" Additionally, undoing many times (with for example 10u) is simple
" but it feels like jumping blindly. When scrolling, undoing/redoing 
" becomes more visually intuitive and fun as well.
" By the way: No, I have no shame. Why do you ask?
set mouse=a
nnoremap <ScrollWheelUp> g-
nnoremap <ScrollWheelDown> g+
inoremap <ScrollWheelUp> <Esc>g-i
inoremap <ScrollWheelDown> <Esc>g+i

" LaTeX commands:

" Set a spell checker in LaTeX documents:
autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=nb,en_gb 

" Set textwidth, for use with formatting (gw and gq).
autocmd BufRead,BufNewFile *.tex setlocal textwidth=60 formatoptions=cornj

" Map Ctrl-L to correct typos in current line (in insert mode):
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
" Do not check spelling in comments:
let g:tex_comment_nospell= 1    

" LaTeX conceal:
let g:tex_conceal='abdmg'       " Define Conceal 
set conceallevel=2
" Conceal content of equations
" Remove colors from Conceal:
highlight Conceal ctermbg=none 


" Plugins
call plug#begin()
    Plug 'lervag/vimtex'
    Plug 'SirVer/ultisnips'
call plug#end()

" vimtex definitions
let g:tex_flavor='latex'    " Use LaTeX flavor in vimtex

" Compile to an out/ directory, and
" use shell-escape to externalize tikz figures.
let g:vimtex_compiler_latexmk = {
        \ 'build_dir' : 'out',
        \ 'options' : [
        \   '-shell-escape' ,
        \ ],
    \}

" Ignore certain warnings.
let g:vimtex_quickfix_ignore_filters = [
      \ 'Underfull',
      \ 'Overfull',
      \]

" snippet definitions
" See :h UltiSnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.vim/snippets/"
