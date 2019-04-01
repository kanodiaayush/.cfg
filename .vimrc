set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
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
filetype plugin indent on

syntax on

" Set the status bar to show the line number and column number
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

" Setting mapleader
let mapleader="\\"

" Setting F3 to toggle comments using Nerd Commentor
map <F3> \c<space>

" Setting a default colour scheme; colorscheme default reverts to the default
" color scheme
colorscheme apprentice

" To change the shape of the cursor in different modes
if has("autocmd")
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
endif

" Open split screens to the right and below
set splitright
set splitbelow

" Vertical line after 80 characters
set colorcolumn=+1

" Use space for tabs
set softtabstop=4 shiftwidth=4 tabstop=4 expandtab

" F3 to toggle comments
  map <F3> <plug>NERDCommenterToggle<CR>
  imap <F3> <Esc><plug>NERDCommenterToggle<CR>i 

" Ctrl + F to Format
map <C-F> :py3f /usr/share/vim/addons/syntax/clang-format-3.8.py<CR>
imap <C-F> <Esc>:py3f /usr/share/vim/addons/syntax/clang-format-3.8.py<CR>i
