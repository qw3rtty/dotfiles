" Vundle config
" =============
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'scrooloose/nerdtree'
 Plugin 'morhetz/gruvbox'
 Plugin 'vim-airline/vim-airline'
call vundle#end()

" Autostart gruvbox-theme
autocmd vimenter * ++nested colorscheme gruvbox

" Basic options
" =============
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
set backspace=indent,eol,start
"set colorcolumn=80
"set ruler
set showcmd
highlight ColorColumn ctermbg=7
set incsearch
set hlsearch
set nobackup
set nowb
set noswapfile
set smartindent
set smartcase
set noerrorbells
set laststatus=2
set statusline+=%F
filetype plugin indent on

" Hybrid line numbers
" ===================
set number relativenumber
set nu rnu

" Features
" ========
set nocompatible "Disable distro specific options
set wildmenu "Better command-line completion
set noshowmode
filetype indent plugin on "Determine the type of a file

" Styling options
" ===============
highlight clear
if exists('syntax_on')
    syntax reset
endif

set background=dark
if &term == 'screen'
    set t_Co=256
endif

let &t_ut=''
syntax on

" Cursor options
" ==============
if &term == 'xterm-256color' || &term == 'screen-256color'
    let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[1 q"
endif

" Usability options
" =================
set ignorecase
set smartcase
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro' " Show line numbers on default explorer (netrw)

" NERDTree settings
" =================
nmap <silent> <c-t> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1

" Keybindings
" ===========

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
