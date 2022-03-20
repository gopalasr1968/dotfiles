"-- --------------------------------------------------------
"     _       _ __        _
"   (_)___  (_) /__   __(_)___ ___^
"  / / __ \/ / __/ | / / / __ `__ \
" / / / / / / /__| |/ / / / / / / /
"/_/_/ /_/_/\__(_)___/_/_/ /_/ /_/
" ----------------------------------------------------------
"{ Neo Vim Configuration
"
"{{  Basic Settings
" -------------------------------
" for folding vim sections.
:set foldmethod=expr
:set foldexpr=VimFolds(v:lnum)
:set foldtext=MyFoldText()
:set fillchars=fold:\ 

syntax on                   " Enable syntax highlight
:set fileencoding=utf-8     " Encoding format utf-8"     
:set number                 " Enable line numbers
:set relativenumber         " Enable relative numbering to current line
:set hidden                 " Hides the current buffer when a new file is openned
:set tabstop=4              " Show existing tab with 4 spaces width
:set shiftwidth=4           " When indenting with '>', use 4 spaces width
:set smarttab               " insert tabs on the start of a line according to shiftwidth
:set softtabstop=4          " Show existing tab with 4 spaces width
:set mouse=a                " Enable Mouse 
:set encoding=UTF-8         " The encoding should be utf-8 to activate the font icons
:set t_Co=256               " Terminal color to 256
:set tabline=2              " tab line  
:set background=dark        " background color
set scrolloff=8             " Minimum number of lines to keep above and below the cursor
:set hlsearch               " Always highlight while search
:set incsearch              " Enable incremental Search  
:set cursorline             " Show cursor line
:set cursorcolumn           " Show Cursor Column
:set autoindent             " Automatically inserts one extra level of indentation in some cases
:set expandtab              " On pressing tab, insert 4 spaces
:set smartcase              " Consider case if there is a upper case character
:set ignorecase             " Ingore case in Search
:set splitright             " Create the vertical splits to the right
:set splitbelow             " Create the horizontal splits below
:set title

filetype plugin indent on   " Load the plugin file for the file type, if any
filetype indent on          " Load the indent file for the file type, if any
"
"let g:Guifont="Source Code Pro for Powerline:h16" 
:set guifont=MesloLGS\ NF:h18>

" ------------------------------------------------
" Key Mappings
" ------------------------------------------------
let g:mapleader = " "
nnoremap <leader>n :Explore<CR>
nnoremap <leader><Space> :CtrlP<CR>
set splitbelow splitright
set fillchars+=vert:\  
nnoremap <leader>, :vsplit ~/.config/nvim/init.vim<CR>

"Nerd Tree Keys.
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-S> :NERDTreeFocus<CR>
nnoremap <F3>  :NERDTreeToggle<cr>
"nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

"Nerd Commenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

"Tagbar Toggle
nmap <C-t> :TagbarToggle<CR>

" Functions for Vertical & Horizontal movement.
function! MoveHSeparator(PlusMinus)
    let num=tabpagewinnr(tabpagenr())
    let pm=a:PlusMinus
    if  num == "2"
        let pm = pm == '+' ? '-' : '+'
    end
    exec "resize " . pm . "1"
endfunction

function! MoveVSeparator(PlusMinus)
    let num=tabpagewinnr(tabpagenr())
    let pm=a:PlusMinus
    if  num == "2"
        let pm = pm == '+' ? '-' : '+'
    end
    exec "vertical resize " . pm . "1"

endfunction

" Window splits.
nnoremap <leader>v :vsp<CR>
nnoremap <leader>h :sp<CR>

" Swap splits.
map <leader>th <C-w>t<C-w>H 
map <leader>tk <C-w>t<C-w>K

" Window resizing. 
nnoremap <silent> <S-Left>  :call MoveVSeparator("-")<CR>
nnoremap <silent> <S-Right> :call MoveVSeparator("+")<CR>
nnoremap <silent> <S-Up>    :call MoveHSeparator("-")<CR>
nnoremap <silent> <S-Down>  :call MoveHSeparator("+")<CR>
nnoremap <leader>rp         :vertical resize 100<CR>
nnoremap <leader>rh         :resize 100<CR>

" To Move selected (Shift-V) lines above or below
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

"Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" Alternate way to save
nnoremap <C-s> :w<CR>

" Alternate way to quit
nnoremap <C-Q> :wq!<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Use numbers to pick the tab you want (like iTerm)
nnoremap <leader>p :tabprevious<CR>
nnoremap <leader>n :tabnext<CR>
nnoremap <leader>c :tabnew<CR>
nnoremap <leader>o :tabo<CR>
nnoremap <leader>x :'%s/'
map <silent> <leader>1 :tabn 1<cr>
map <silent> <leader>2 :tabn 2<cr>
map <silent> <leader>3 :tabn 3<cr>
map <silent> <leader>4 :tabn 4<cr>
map <silent> <leader>5 :tabn 5<cr>
map <silent> <leader>6 :tabn 6<cr>
map <silent> <leader>7 :tabn 7<cr>
map <silent> <leader>8 :tabn 8<cr>
map <silent> <leader>9 :tabn 9<cr>
nnoremap <leader>o o<Esc>^Da
nnoremap <leader>O O<Esc>^Da

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Copy & Paste Clipboard (from/to VIM)
nnoremap <C-y > "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+p
vnoremap <C-p> "+p

" Other settings.
nnoremap Y y$

" NerdTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeCustomOpenArgs={'file':{'where': 't'}}
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Code action on <leader>a
vmap <leader>a <Plug>(coc-codeaction-selected)<CR>
nmap <leader>a <Plug>(coc-codeaction-selected)<CR>

" hot key for fzf 
nmap <leader>f  :FZF<CR>

" Hot Key for Ranger.
nmap <leader>a :Ag<CR>
nmap <leader>s :Rg<CR>

" Goto definition
nmap <silent> gd <Plug>(coc-definition)
" Open definition in a split window
nmap <silent> gv :vsp<CR><Plug>(coc-definition)<C-W>L
nnoremap <leader>sv :source $MYVIMRC<CR>

" navigation shortcuts 
nmap 1 ^
nmap 9 $
noremap <Space>h  ^
noremap <Space>l  $
"}} 
"
"
"{{  PlugIns 
call plug#begin()

Plug 'https://github.com/kien/ctrlp.vim' "A Fuzzy File finder
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/nanotech/jellybeans.vim' " Jelly Beans Theme   
Plug 'Mofiqul/dracula.nvim'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" color schemes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'pineapplegiant/spaceduck',{'branch': 'main'}
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ajh17/Spacegray.vim'
Plug 'EdenEast/nightfox.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Git Support
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

"Ranger
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

set encoding=UTF-8

call plug#end()
"}}
"
"
"{{  lua Settings
"colorscheme nord
"colorscheme onedark

" Tokyo night colorscheme setup.
" Example config in VimScript
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000',
  \ }

" Load the colorscheme
 colorscheme tokyonight

"lsp config & autocompletion.
set completeopt=menu,menuone,noselect
"lua require "user.treesitter"
"lua require "user.lsp"

" Configuration for LspConfig & lsp Auto Completion.
lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it. 
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
EOF
" End Completion of Lsp AutoCompetion Lua setup.
"
" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE
"}}
"
"
"{{  Airline Status Bar Settings
" -----------------------------------------------
"Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#namenode=':t'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr= ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" ----------------------------------------------------------------------
"  Below Two Functions for categorize & folding in to different sections
"  ----------------------------------------------------------------------

function! VimFolds(lnum)
    " get content of current line and the line below
    let l:cur_line = getline(a:lnum)
    let l:next_line = getline(a:lnum+1)

    if l:cur_line =~# '^"{'
        return '>' . (matchend(l:cur_line, '"{*') - 1)
    else
        if l:cur_line ==# '' && (matchend(l:next_line, '"{*') - 1) == 1
            return 0
        else
            return '='
        endif
    endif
endfunction

function! MyFoldText()
    let line = getline(v:foldstart)
    let folded_line_num = v:foldend - v:foldstart
    let line_text = substitute(line, '^"{\+', '', 'g')
    let fillcharcount = &textwidth - len(line_text) - len(folded_line_num)
    return '+'. repeat('-', 4) . line_text . repeat('.', fillcharcount) . ' (' . folded_line_num . ' L)'
endfunction
"}}
"}1
