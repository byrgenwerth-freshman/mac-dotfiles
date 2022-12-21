set shell=/bin/zsh

set term=xterm-256color

source /usr/local/lib/python3.9/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//


" Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()            " required
filetype plugin indent on    " required

set colorcolumn=80
set ruler

syntax enable

" Solarized configuration
let g:solarized_termtrans = 1

set background=dark
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized




" Tab settings
set tabstop=2
set shiftwidth=2
set expandtab

nnoremap <Leader>[ :bp<CR>
nnoremap <Leader>] :bn<CR>
nnoremap <leader>q :bp<cr>:bd #<cr>

set backspace=indent,eol,start

"
set number
set hidden

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

