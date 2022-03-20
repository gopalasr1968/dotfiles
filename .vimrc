" My .vimrc Setup - November 2020

filetype on
filetype plugin indent on
syntax on
set nocompatible
" --------------------------------------------------------------------------------
"  configure editor for python
"  --------------------------------------------------------------------------------
let mapleader = " "
let python_highlight_all = 1
"set clipboard+= unnamedplus
set mouse=a

" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab

autocmd Filetype python setlocal expandtab 
autocmd Filetype python setlocal ignorecase 
autocmd filetype python setlocal textwidth=140

" Other sets.
set expandtab          " enter spaces when tab is pressed
set autoindent         " copy indent from current line when starting a new
set smartindent
set copyindent         " copy the previous indentation on autoindenting
set smarttab
set number
set ignorecase         " ignore case when searching
set smartcase          " ignore case if search pattern is all lowercase,
set incsearch          " show search matches as you type
set showcmd            " show (partial) command in status line
"set cursorline         " show a visual line under cursor's current line
set showmatch          " show matching part of pair [] {} etc.,
set hlsearch           " highlight search terms
set visualbell         " don't beep
set splitright

autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" list with leader.
nnoremap <leader>I :set list!<cr>
set nolist

"Toggle line numbers
nnoremap <leader>N :setlocal number!<cr>
nnoremap <leader>, :set cursorline!<cr>  " toggle highlighting the cursor line
nnoremap <leader>Q :q<CR>    " Quickly close the current window
nnoremap <leader>q :bd<CR>   " Quickly close the current buffer
nnoremap H 0
nnoremap L $	
nnoremap gk H 
nnoremap gj L 
nnoremap gt gg 
nnoremap gb G

" Other map functions.
"Map F3 to set line number on/off to F3 normal & insert mode
nmap <F3> :set nu! <CR>
imap <F3> <ESC> :set nu! <CR>i
"Map >leader>F3 to relative line number on/off to F3
nmap <leader><F3> :set rnu! <CR>
" move through split windows
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
 
"Tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm
map tt :tabnew<cr>
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

"autocmd filetype netrw nnoremap <buffer> <s-down> :wincmd j<cr>
"autocmd filetype netrw nnoremap <buffer> <s-up> :wincmd j<cr>
set rtp+=/usr/local/opt/fzf
