call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
"Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
"Plug 'kien/rainbow_parentheses.vim'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/rainbow_parentheses.vim'

Plug 'gabrielelana/vim-markdown'
Plug 'flazz/vim-colorschemes'
Plug 'w0ng/vim-hybrid'
Plug 'altercation/vim-colors-solarized'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'valloric/youcompleteme'
Plug 'gabrielelana/vim-markdown'

Plug 'hynek/vim-python-pep8-indent'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'joshdick/onedark.vim'
Plug 'felixhummel/setcolors.vim'

Plug 'nvie/vim-flake8'



call plug#end()
set t_Co=256




"　load plugins config
if filereadable(expand("~/.vimrcplugin"))
  source ~/.vimrcplugin
endif
"let g:python3_host_prog = '/path/to/python3'
" change leader key
let mapleader = ','
let g:mapleader = ','

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 11
" 语法高亮
syntax enable
" 自动补全
filetype plugin indent on          
set history=2000
"　文件修改后自动载入
set autoread
" 隐藏一些自动生成的文件
set wildignore+=*.swp,*.bak,*.pyc,*.class,.git

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)


" 配色方案 
"colorscheme toothpaste
"colorscheme hybrid 
"colorscheme onedark 
colorscheme molokai 
set termguicolors
set background=dark
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"let g:solarized_visibility="high"
"let g:solarized_diffmode="high"

" 突出显示
set cursorline
" set cursorcolumn
" 鼠标暂不启用, 键盘党....
set mouse-=a
" 启用鼠标
" set mouse=a
" Hide the mouse cursor while typing
" set mousehide

set nocompatible
set modelines=0

set tabstop=4
"　缩进宽度和退格
set shiftwidth=4
set softtabstop=4
set expandtab
" 编码格式
set encoding=utf-8
set scrolloff=3
" 自动锁紧
set autoindent
"　显示命输入令和模式
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
"　正则
nnoremap / /\v
vnoremap / /\v
" 大小写
set ignorecase 
set smartcase
set gdefault
set incsearch
"　括号匹配
set showmatch
" 高亮显示搜索
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
            
set wrap
set textwidth=99
set formatoptions=qrn1
set colorcolumn=99
" 取消方向键
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
" F1　误触
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap ; :
au FocusLost * :wa
" jj 替代　ＥＳＣ
inoremap jj <ESC>
nnoremap <leader>w <C-w>v<C-w>l
"　分屏宽口移动
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" tab　switch

map <leader>th :tabfirst<cr>
map <leader>tl :tablast<cr>

" 新建tab  Ctrl+t
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
" select all 全选
map <Leader>sa ggVG

