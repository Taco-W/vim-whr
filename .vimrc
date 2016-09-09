set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-Tree'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'Yggdroot/IndentLine'

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


" Set NERD Tree
let g:NERDTreeDirArrows=0
"au VimEnter * NERDTree
"map <Leader>n <plug>NERDTreeTabsToggle<CR>
"au VimEnter * NERDTreeTabsToggle
":let  g:NERDTreeTabsOpen
:let g:nerdtree_tabs_open_on_console_startup = 1

" 开启文件类型侦测
filetype on
 
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

set laststatus=2
set clipboard=unnamed
set expandtab

" Tab Setting
set tabstop=1
set softtabstop=1
set shiftwidth=1
set autoindent

" Normal Configuration
set incsearch
set hlsearch 
set ignorecase
set nocompatible
set wildmenu

autocmd FileType cpp setlocal ts=2 sts=2 sw=2
autocmd FileType python setlocal ts=2 sts=2 sw=2
autocmd FileType java setlocal ts=4 sts=4 sw=4

" Leader 
let mapleader=";"

" replace operator. I can paste without copy/cut previous content
vmap r "_dhp

vmap <Leader>y "+y<CR>
nmap <Leader>yy "+yy<CR>
nmap <Leader>p "+p<CR>

"Setting of NERDTree
nmap <C-l> :tabn<CR>
nmap <C-h> :tabp<CR>
nmap <C-n> :tabnew<CR>

"vmap <Leader>y :w !pbcopy<CR><CR>
"nmap <Leader>yy :.w !pbcopy<CR><CR>
"nmap <Leader>p :r !pbpaste<CR><CR>

nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>WQ :wa<CR>:q<CR>
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
nnoremap <Leader>lw <C-W>l
nnoremap <Leader>hw <C-W>h
nnoremap <Leader>kw <C-W>k
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转，助记pair
nmap <Leader>pa %

" mapping for compile option
nnoremap <F5> :make<CR>

syntax on
syntax enable
set nu!
set cindent
set background=dark
set ruler

"Set Compile Info
set makeprg=python\ %

set t_Co=256
"colorscheme distinguished
colorscheme molokai
"colorscheme LightTwist 
"colorscheme pychimp 
"
set backspace=indent,eol,start
