syntax on""" enable syntax colors
set autowrite""" autosave when quit
set bg=dark""" Using dark bg
"set number""" print line numbers
set history=500
set hlsearch""" Show what I search
set nohlsearch
set smartindent
set tabstop=4
set shiftwidth=4
set enc=utf-8" use utf-8
"comment (cc) and uncomment (cu) code 
noremap   <silent> cc      :s,^\(\s*\)[^# \t]\@=,\1# ,e<CR>:nohls<CR>zvj
noremap   <silent> cu      :s,^\(\s*\)# \s\@!,\1,e<CR>:nohls<CR>zvj

"set incsearch
"set showcmd
"set expandtab
"set backspace=indent,eol,start """ allow backspacing over everything in insert mode
"set nocp                    " 'compatible' is not set
"set foldmethod=indent

""" using mutt wrap line after 72 char """
"au BufRead /tmp/mutt-* set tw=72

" autoindent the code
filetype indent on
set autoindent

" Tricks for developers
"from: http://guide.debianizzati.org/index.php/Python_e_Vim
map <f5> :w<CR>:!python %<CR>
map <f6> :w<CR>:!perl %<CR>
