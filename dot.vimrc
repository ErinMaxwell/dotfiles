if &t_Co > 1
	syntax on
endif
colorscheme pablo
set background=dark
set autoindent
set smarttab
set nohlsearch
set ruler
set ignorecase
set smartcase
"
"
"
filetype on
autocmd FileType html,xhtml set formatoptions=tq shiftwidth=4 textwidth=76
autocmd BufEnter,BufRead *.pl setlocal smartindent shiftwidth=4 formatoptions=croq
autocmd BufEnter,BufRead *.sh setlocal smartindent shiftwidth=4 formatoptions=croq
autocmd BufEnter,BufRead *.php setlocal smartindent shiftwidth=4 formatoptions=croq
autocmd BufEnter,BufRead *.sql setlocal smartindent shiftwidth=4 formatoptions=croq
autocmd BufEnter,BufRead *.c setlocal smartindent shiftwidth=4 formatoptions=croq
autocmd BufEnter,BufRead *.cpp setlocal smartindent shiftwidth=4 formatoptions=croq
autocmd BufEnter,BufRead *.java setlocal smartindent shiftwidth=4 formatoptions=croq
"autocmd FileType *.py set smartindent shiftwidth=4 formatoptions=croq 
autocmd BufEnter,BufRead *.py setlocal smartindent shiftwidth=4 formatoptions=croq cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufEnter,BufRead *.rb setlocal smartindent shiftwidth=4 formatoptions=croq
autocmd FileType text set textwidth=76
"
" Mappings
" ========
" The next 5 lines set f10 to set paste mode, f11 to unset it
:map <F10> :set paste<CR>
:map <F11> :set nopaste<CR>
:imap <F10> <C-O>:set paste<CR>
:imap <F11> <nop>
:set pastetoggle=<F11>
"
