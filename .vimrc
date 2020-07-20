set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'nanotech/jellybeans.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'PeterRincker/vim-argumentative'
Plugin 'chrisbra/csv.vim'
Plugin 'AndrewRadev/switch.vim'
" R Plugins
Plugin 'jalvesaq/Nvim-R'
" Search and Help Plugin
Plugin 'rizzatti/dash.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
"let mapleader = ','
"runtime! plugin/NERD_commenter.vim
"let mapleader = '\'
"runtime! plugin/r_nvimr.vim

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" plugins

syntax on

" Set the status bar to show the line number and column number
set laststatus=2
set statusline+=%F
set number
set ruler

" If in insert mode, underline the current line
autocmd InsertEnter,InsertLeave * set cul!

" Navigation of split screens using alt and arrow keys
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
nmap <silent> <S-Up> :wincmd k<CR>
nmap <silent> <S-Down> :wincmd j<CR>
nmap <silent> <S-Left> :wincmd h<CR>
nmap <silent> <S-Right> :wincmd l<CR>

" Auto indent
set autoindent

" Setting a default colour scheme; colorscheme default reverts to the default
" color scheme
set term=screen-256color
"set t_Co=256
set background=dark
"colorscheme apprentice
"let g:hybrid_custom_term_colors = 1
"let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
colorscheme hybrid
"colorscheme jellybeans


" Open split screens to the right and below
set splitright
set splitbelow

" Vertical line after 80 characters
"set colorcolumn=+1

" Use space for tabs
autocmd Filetype python setlocal softtabstop=4 shiftwidth=4 tabstop=4 expandtab

" Setting F3 to toggle comments using Nerd Commentor
map <F3> <leader><space>

" Disable arrow keys in vim to force habit of using hjkl; Arrow keys should
" ideally be remapped to something later.
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

if !exists('g:lasttab')
	  let g:lasttab = 1
  endif
  nmap 0gt :exe "tabn ".g:lasttab<CR>
  au TabLeave * let g:lasttab = tabpagenr()

" Set textwidth for markdown files
au BufRead,BufNewFile *.md setlocal textwidth=80

" A color column at textwidth
set colorcolumn=+1
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md  set ft=markdown

" Undo Search Highlighting on the enter key
nnoremap <CR> :noh<CR><CR>

"Moving around in insert mode
inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj

"Not having to hit Esc
inoremap jk 
inoremap kj 

"nvim-r do not use _ to produce ->
let R_assign = 0

"because backspace does not work
set backspace=indent,eol,start

"backspace in normal mode should delete
nnoremap <BS> X

