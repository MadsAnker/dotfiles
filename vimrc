set nocompatible	" no idea
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'SirVer/ultisnips'
Plugin 'neoclide/coc.nvim', {'branch': 'release', 'do': 'yarn install --frozen-lockfile'}
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'preservim/nerdtree' 
Plugin 'lsdr/monokai' 
Plugin 'sheerun/vim-polyglot'
Plugin 'rhysd/vim-healthcheck'
Plugin 'honza/vim-snippets'
Plugin 'fidian/hexmode'
Plugin 'chriskempson/base16-vim'
Plugin 'nbouscal/vim-stylish-haskell'
" Plugin 'raghur/vim-ghost'
" Plugin 'roxma/vim-hug-neovim-rpc'
call vundle#end() 


" Install tsserver for COC
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ ]

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
" set spelllang=da
" Only for tex files
autocmd BufRead,BufNewFile *.tex setlocal spell

" Use build dir
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \ 'build_dir': 'build',
    \}

set autoindent		" auto indent
set smartindent		" smart indentation for c-like languages
syntax enable		" enable syntax highlight
set number		" line numbers
set hidden		" enable buffers to be 'hidden' see :help hidden
set laststatus=2	" always show the status line
set backspace=indent,eol,start	" always allow backspace see https://vi.stackexchange.com/a/2163
set relativenumber
filetype plugin indent on
set termguicolors
colorscheme monokai
set term=xterm-256color
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
silent! nmap <C-c> :NERDTreeToggle<CR>
let g:NERDTreeIgnore = ['.*\.class$', '.*\.o$']
set clipboard=unnamedplus


autocmd BufNewFile,BufRead Makefile setlocal noexpandtab

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256          " Remove this line if not necessary
  source ~/.vimrc_background
endif
