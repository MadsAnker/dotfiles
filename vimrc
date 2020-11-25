set nocompatible	" no idea
set autoindent		" auto indent
set smartindent		" smart indentation for c-like languages
syntax enable		" enable syntax highlight
set number		" line numbers
set hidden		" enable buffers to be 'hidden' see :help hidden
set laststatus=2	" always show the status line
set backspace=indent,eol,start	" always allow backspace see https://vi.stackexchange.com/a/2163
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'SirVer/ultisnips'
call vundle#end() 

" Ultisnip config
let g:UltiSnipsExpandTrigger="<tab>"		
let g:UltiSnipsJumpForwardTrigger="<tab>"	" jump to next placeholder
let g:UltiSnipsEditSplit="vertical"

" Correct common spelling mistakes
abbr tmep temp
abbr widht width
abbr itn int
abbr pyhton python

" LaTex stuff
let maplocalleader = '´'

let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'

" Spelling
set spelllang=da
" Only for tex files
autocmd BufRead,BufNewFile *.tex setlocal spell

" Use build dir
let g:vimtex_compiler_latexmk = {
            \ 'build_dir' : 'build',
            \}
