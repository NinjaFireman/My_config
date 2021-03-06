"set nocompatible            " Disable compatibility to old-time vi
"set showmatch               " Show matching brackets.
"set ignorecase              " Do case insensitive matching
"set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
"set tabstop=4               " number of columns occupied by a tab character
"set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
"set expandtab               " converts tabs to white space
"set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
syntax on

set termguicolors " Enable true color support.
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" color scheme
"colorscheme tir_black
let g:dracula_colorterm = 0
colorscheme dracula

" Pathogen
execute pathogen#infect()

filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on  " allows auto-indenting depending on file type

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:rustfmt_autosave = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_c_checkers = ['gcc']
let g:syntastic_sh_checkers = ['shellcheck']

nnoremap <S-n> :NERDTree
nnoremap <S-nc> :NERDTreeClose
