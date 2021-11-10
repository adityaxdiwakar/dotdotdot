# vim configuration for aditya's macbook pro 

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'morhetz/gruvbox'
call plug#end()

set colorcolumn=80
set number
set relativenumber
set background=dark
set smartindent
set shiftwidth=4
set tabstop=4 softtabstop=4
set noerrorbells
set smartcase
set noswapfile
set incsearch

autocmd vimenter * ++nested colorscheme gruvbox
autocmd BufNewFile,BufRead *.tex set filetype=tex

let g:vimtex_view_method = 'skim'
let g:tex_flavor = 'latex'
let g:vimtex_compiler_latexmk = {
	\ 'options' : [
	\	'-pdf',
	\	'-shell-escape',
	\	'-verbose',
	\ 	'-file-line-error',
	\	'-synctex=1',
	\	'-interaction=nonstopmode',
	\	],
	\   }
	
