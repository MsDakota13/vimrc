set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'jnurmine/Zenburn'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'roxma/vim-paste-easy'
Plugin 'ericbn/vim-relativize'
Plugin 'Janko-m/vim-test'
Plugin 'nvie/vim-flake8'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
"
" Install Vundle from GitHub:
"   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" To install flake8:
"   pip3 install flake8
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" -----------------------------------------------------------------------------
" General
" -----------------------------------------------------------------------------

set encoding=utf8

" Enforce termincal has 256 colors
set t_Co=256

" Custom colour scheme
colorscheme zenburn

" Window controls
noremap <C-h> <C-W>h
noremap <C-k> <C-W>k
noremap <C-l> <C-W>l
noremap <C-j> <C-W>j

" Indent settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent

set showcmd  " Show incomplete cmds down the bottom
set showmode " Show current mode down the bottom

" Folding settings
set foldmethod=indent " Fold based on indent
set foldnestmax=3     " Deepest fold is 3 levels
set nofoldenable      " Don't fold by default

" Search options
set incsearch  " Find the next match as we type the search¶
set ignorecase " Ignore case when searching or substituting¶
set hlsearch   " Highlight searches by default¶

set laststatus=2 " Always display status line

" Change leader key
let mapleader="\<Space>"

" -----------------------------------------------------------------------------
" Syntastic
" -----------------------------------------------------------------------------

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" -----------------------------------------------------------------------------
" UltiSnips
" -----------------------------------------------------------------------------

" Remap trigger to <CR> to allow selection mucomplete list
let g:UltiSnipsExpandTrigger='<C-e>'
let g:UltiSnipsJumpForwardTrigger='<Tab>'
let g:UltiSnipsJumpBackwardTrigger='<S-Tab>'

" -----------------------------------------------------------------------------
" vim-gutentags
" -----------------------------------------------------------------------------

let g:gutentags_cache_dir="~/.vim/cache"
let g:gutentags_project_root=['pip-selfcheck.json'] " enable for virtualenv

" -----------------------------------------------------------------------------
" NerdTree
" -----------------------------------------------------------------------------

nmap <silent> <Leader>p :NERDTreeToggle<CR>

" -----------------------------------------------------------------------------
" jedi-vim
" -----------------------------------------------------------------------------

" Let vim-mucomplete handle autocompletion
let g:jedi#popup_on_dot=0

" -----------------------------------------------------------------------------
" Strip whitespace on save
" -----------------------------------------------------------------------------

autocmd BufWritePre * call <SID>StripTrailingWhitespace()
function! <SID>StripTrailingWhitespace()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfunction

" -----------------------------------------------------------------------------
" Restore cursor position on file open
" -----------------------------------------------------------------------------

autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
    if &filetype !~ 'commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal g`\""
        endif
    end
endfunction

"------------------------------------------------------------------------------
" Relativize setup
" -----------------------------------------------------------------------------

set number relativenumber
