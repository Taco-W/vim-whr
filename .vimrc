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
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'derekwyatt/vim-scala'

Plugin 'Yggdroot/IndentLine'
Plugin 'taglist.vim'

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


" NERDTree Related Settings
let g:nerdtree_tabs_open_on_console_startup = 1
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=25

" Settings of Indent Line
let g:indentLine_char = '|'
let g:indentLine_color_term = 239

filetype on
 
filetype plugin on

set laststatus=2
set clipboard=unnamed
set expandtab

" Tab Setting
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent

" Normal Configuration
set incsearch
set hlsearch 
set ignorecase
set nocompatible
set wildmenu

" Line lenth hint
set colorcolumn=80

" Avoid adding end of line
set nofixendofline

autocmd FileType java setlocal ts=4 sts=4 sw=4
autocmd FileType sh setlocal ts=4 sts=4 sw=4
autocmd FileType cpp setlocal ts=2 sts=2 sw=2
autocmd FileType python setlocal ts=2 sts=2 sw=2

" taglist Setting
let g:Tlist_WinWidth=25
let g:Tlist_Use_Right_Window=1
autocmd BufWinEnter * TlistOpen

" Leader 
let mapleader=";"

" ctags optimization
set autochdir
set tags=tags;

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
" Move between windows
nnoremap nw <C-W><C-W>
nnoremap <Leader>lw <C-W>l
nnoremap <Leader>hw <C-W>h
nnoremap <Leader>kw <C-W>k
nnoremap <Leader>jw <C-W>j

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

" Collor Scheme Settings
colorscheme lucius
set background=light

set backspace=indent,eol,start

" Deal with strange behavior of F1-F10
if !has("gui_running") && $TERM is "ansi"
    for [key, code] in [["<F1>", "\eOP"],
                        \["<F2>", "\eOQ"],
                        \["<F3>", "\eOR"],
                        \["<F4>", "\eOS"],
                        \["<F5>", "\e[15~"],
                        \["<F6>", "\e[17~"],
                        \["<F7>", "\e[18~"],
                        \["<F8>", "\e[19~"],
                        \["<F9>", "\e[20~"],
                        \["<F10>", "\e[21~"],
                        \]
        execute "set" key."=".code
    endfor
endif

" Compile command for multiple language
autocmd filetype python nnoremap <F4> :!%:p <CR>
" autocmd filetype python nnoremap <F4> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype tex nnoremap <F4> :w <bar> exec '!xelatex '.shellescape('%')<CR>
nnoremap <F3> :grep! "\<<cword>\>" . -r<CR>

let g:tex_conceal = ""
