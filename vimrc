" Plugs ----------------------------------------------------- {{{
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
 Plug 'dense-analysis/ale'
 Plug 'preservim/nerdtree'
 Plug 'joshdick/onedark.vim'
 Plug 'lifepillar/vim-gruvbox8'
 Plug 'lervag/vimtex'
 Plug 'rhysd/vim-clang-format'
 Plug 'catppuccin/vim'
call plug#end()

" }}}
" Options  --------------------------------------------------------------------------- {{{
" No Errorbells 
set noerrorbells

" Shiftwidth
set shiftwidth=4


" Tab Width
set tabstop=4

" Set Space Chars for tabs instead of tabs
" set expandtab

" Line Numbering
set number

" No Backup Files
set scrolloff=8

set nowrap 

set incsearch

set ignorecase

set smartcase  

set showcmd 

set showmode

set showmatch  

set hlsearch

set history=1000

colorscheme onedark
"Completion
set wildmenu

set wildmode=list:longest

set noswapfile

set autowrite

set cursorline
" Statusline Stuff
"set laststatus=2
"set noshowmode

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
" }}} 
" Vimscript Code -------------------------------------------------------------------------------------------------------------------------- {{{


augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END





" }}}
" Bindings --------------------------------------------------------------- {{{



" }}}
"Plugin Configs ---------------------------------- {{{
"  Nerd Tree Configuration! 
let NerdTreeMinimalUI=1
let NerdTreeMinimalMenu=1
let NerdTreeQuitOnOpen='3'


" Vimtex
filetype plugin indent on

syntax enable

" if want ocular
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" If want zathra
" let g:vimtex_view_method = 'zathura'




" }}}
