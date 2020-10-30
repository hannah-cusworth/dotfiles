"       GENERAL 
syntax on 
set relativenumber
set nu
set incsearch
set ignorecase
set hlsearch
set clipboard=unnamed
filetype plugin indent on 
set backspace=indent,eol,start 
set noerrorbells
set smartindent
set wrap
set linebreak
set smartcase
"automatically set markdown files readable linewidth 
au BufRead,BufNewFile *.md setlocal textwidth=80
au BufRead,BufNewFile *.md setlocal wrap
"       CURSOR SETTINGS
let &t_SI.="\e[1 q" "SI = INSERT mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)
"       STATUS BAR
set noshowmode
set timeoutlen=100
set hidden
"       BACKUP
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
"       TABBING 
set tabstop=4 
set shiftwidth=4 
set expandtab 
set autoindent
"        PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'
Plug 'scrooloose/syntastic'
"Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
"Plug 'leafgarland/typescript-vim'
"Plug 'vim-utils/vim-man'
"Plug 'lyuts/vim-rtags'
"Plug 'mbbill/undotree'
"Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
call plug#end()
"       APPEARANCE
colorscheme gruvbox
set t_Co=256
set background=dark 
"       KEY BINDINGS 
let mapleader = ","
nnoremap ,l zL
nnoremap ,h zH
command! W :w
"disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
"       FILES 
set wildmenu
"       AIRLINE
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"#let g:airline#extensions#tabline#left_alt_sep = '>' 
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
"       SNIPPETS
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"       SYNTACTIC 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = 'python3'
 let g:syntastic_python_checkers = ['python']
