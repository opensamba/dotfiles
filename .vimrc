syntax on		""" enable syntax colors
set autowrite		""" autosave when quit
set bg=dark		""" Using dark bg
set number		""" print line numbers
set history=500

"from: http://www.8t8.us/vim/vim.html
" You can then hit CTRL-n to toggle the highlight on/off
map <silent> <C-N> :set invhlsearch<CR>
set hlsearch		""" by default show what I search

set smartindent
set tabstop=4 
set expandtab
set softtabstop=4
set shiftwidth=4
filetype indent on
set enc=utf-8		" use utf-8

"P11. I want to have two windows; a thin one on the left and my editing
"window on the right.  How may I accomplish this?

let g:netrw_altv = 1

"set incsearch
"set showcmd
"set backspace=indent,eol,start """ allow backspacing over everything in insert mode
"set nocp                    " 'compatible' is not set
"set foldmethod=indent

""" using mutt wrap line after 72 char """
"au BufRead /tmp/mutt-* set tw=72

" autoindent the code
set autoindent

" Tricks for developers
"from: http://guide.debianizzati.org/index.php/Python_e_Vim
map <f4> :w<CR>:!bash %<CR>
map <f5> :w<CR>:!python2.7 %<CR>
map <f6> :w<CR>:!perl %<CR>
