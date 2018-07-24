set term=xterm-256color

source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//


execute pathogen#infect()
syntax on
filetype plugin indent on
call pathogen#infect()

set colorcolumn=80
set ruler

" Solarized configuration
syntax enable
" let g:solarized_termcolors=256
let g:solarized_termtrans = 1


set background=dark
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

" Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

