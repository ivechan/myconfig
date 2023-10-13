" {{{ Plug
call plug#begin('~/.nvimplug/plugged')
Plug 'scrooloose/nerdtree',  { 'on': ['NERDTreeToggle', 'NERDTreeFind' ]}
"Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-surround'                                  " 更方便地使用括号，引号等成对出现的符号
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/LeaderF'
Plug 'mileszs/ack.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-unimpaired'                                " Pairs of handy bracket mappings
Plug 'SirVer/ultisnips'                                    " snippets框架
Plug 'ivechan/vim-snippets'                                " 具体某个语言的snippets, 自定义
Plug 'tpope/vim-commentary'                                " 使用 gc 来注释
Plug 'itchyny/lightline.vim'                               " statusline 插件
Plug 'NLKNguyen/papercolor-theme'
Plug 'ivechan/gtags.vim'
call plug#end()
"}}}
let mapleader = ' '          " change leader key to <space>
let g:mapleader = ' '        " change leader key to <space>

syntax enable
filetype plugin indent on          
packadd! matchit
set nocompatible
set foldmethod=marker
set includeexpr=printf('include/%s',v:fname)
set termguicolors              " true color and colorscheme UI and font
"set background=light
set background=light
colorscheme base16-default-dark            " 最好的颜色方案

" {{{  Minimal Setting
set fileformat=unix
set fileencoding=utf-8
set enc=utf-8
set history=200               " 最大2000条历史，够用了吧？
set autoread<                " 　文件修改后自动载入
set laststatus=2               " Always display the statusline in all windows
set showtabline=2              " Always display the tabline, even if there is only one tab
set tabstop=4                  " show existing tab with 4 space width
set expandtab                  " on pressing tab, insert 4 spaces
set hidden
set shiftwidth=4              " >> indents by 4 spaces.
set shiftround                 " >> indents to next multiple of 'shiftwidth'
set cursorline                 " 突出显示
set nobackup                   " no backup
set noswapfile                 " now swapfile
set directory=~/.cache/swapfiles//
set undofile
set undodir=~/.cache/undodir
set viewdir=~/.cache/viewdir
set encoding=utf-8             " set default encoding
set autoindent                 " 自动缩进
set ruler                      " 在右下角显示当前光标所在位置（行列）
set showcmd		" display incomplete commands
set scrolloff=3                " 至少保留在屏幕的行数
set number                     " print the line number in front of each line
set wildmenu                   " 在命令行上面显示候选项
"set spell
set updatetime=100
set ttyfast
set lazyredraw
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.
set wrapscan               " Searches wrap around end-of-file.
set list                   " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif
if &shell =~# 'fish$'
  set shell=/bin/bash
endif
set display=lastline
set ignorecase
set smartcase
set tagcase=match              " tagcase 会继承ignorecase，这样tag不能二分查找
set gdefault                   " 在substitute命令的时候，默认执行整行内的匹配项而不是一个
set incsearch                  " 在执行搜索/命令的时候，及时显示到那里
set hlsearch                   " highlight search result
set textwidth=120
set colorcolumn=120
set backspace=indent,eol,start
set dictionary+=~/vimfiles/scowl/wordlist
set wildignore+=.o,*.bak,*~,*.sw?,*.aux,*.toc,*.git,*.svn,*.so,*.a,*.pyc,*.aux,*.toc,*.exe,*.pb " 隐藏一些自动生成的文件
set notimeout ttimeout timeoutlen=100
set shortmess+=c " dot't give ins-completion-menu message
set shortmess+=T
"}}}
let python_highlight_all = 1

" {{{AsyncRun
" toggles the quickfix window.
let g:Quickfix_Win_Height=6
command! -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
  else
    execute "copen " . g:Quickfix_Win_Height
  endif
endfunction

let g:LocList_Win_Height=10
command! -bang -nargs=? LFix call LFixToggle(<bang>0)
function! LFixToggle(forced)
  if exists("g:lfix_win") && a:forced == 0
    lclose
  else
    execute "lopen " . g:LocList_Win_Height
  endif
endfunction

" used to track the quickfix window
augroup QFixToggle
 autocmd!
 au! BufWinEnter quickfix let g:qfix_win = bufnr("$")
 au! BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
augroup END

function! QFWindowToggle()
    let s:qfid = getqflist({'winid' : 0}).winid
    if s:qfid == 0
        execute "copen " . g:Quickfix_Win_Height
    else
        cclose
    endif
endfunction

function! LocWindowToggle()
    let s:locid = getloclist(0, {'winid' : 0}).winid
    if s:locid == 0
        execute "lopen " . g:LocList_Win_Height
    else
        lclose
    endif
endfunction
"}}}


"{{{" ag
if executable('rg')
    let g:ackprg = 'rg --vimgrep'
endif
"}}}

nnoremap <leader>fe :Leaderf filer --popup<CR>
nnoremap <leader>ft :Leaderf vimtag<space>
nnoremap <leader>ff :Leaderf file --popup<CR>
nnoremap <leader>f :Leaderf file --popup<CR>
nnoremap <leader>l :Leaderf line --popup<CR>
nnoremap <leader>fl :Leaderf line --popup<CR>
nnoremap <leader>fm :Marks<CR>
nnoremap <leader>fb :Leaderf buffer --popup<CR>
nnoremap <leader>b :Leaderf buffer --popup<CR>
nnoremap <leader>fa :Ag<CR>
nnoremap <leader>gp :Gpush
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<Space>
nnoremap <Leader>a :Ack!<Space>
nnoremap <Leader>g :Gtags<Space>
nnoremap <M-m> :Leaderf mru --popup<CR>
"}}}


if has('nvim')
    set inccommand=nosplit
endif
"}}}

" {{{lightline configuration
      " \   'filetype': 'MyFiletype',
      " \   'fileformat': 'MyFileformat',
let g:lightline = {
      \ 'colorscheme': 'Powerline',
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \ },
      \ }

function! MyFiletype()
return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
  endfunction

let g:lightline.active = {
    \ 'left': [ [ 'mode', 'paste' ],
    \           ['readonly', 'filename', 'modified' ],
    \         ],
    \ 'right': [ 
    \            [ 'linter_checking', 'linter_errors', 'linter_warnings'],
    \            [ 'lineinfo' ],
    \            [ 'percent' ],
    \            [ 'fileformat', 'fileencoding', 'filetype' ] ,
    \          ]
    \ }
function! Lightline_Tab_Absolutepath(n) abort
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let _ = expand('#'.buflist[winnr - 1])
  return _ !=# '' ? _ : '[No Name]'
endfunction
let g:lightline.tab_component_function = {
        \ 'filename': 'lightline#tab#filename',
        \ 'absolutepath': 'Lightline_Tab_Absolutepath',
        \ 'modified': 'lightline#tab#modified',
        \ 'readonly': 'lightline#tab#readonly',
        \ 'tabnum': 'lightline#tab#tabnum' }
let g:lightline.tab = {
    \ 'active': [ 'tabnum', 'absolutepath', 'modified' ],
    \ 'inactive': [ 'tabnum', 'filename', 'modified' ] }
"}}}

nnoremap <M-f> :NERDTreeFind<CR>
nnoremap <M-n> :NERDTreeToggle<CR>
nnoremap <F10> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 30
let g:NERDTreeWinPos = "left"
let g:NERDTreeMapUpdirKeepOpen='h'
let g:NERDTreeMapChangeRoot='l'
let g:NERDTreeMapToggleFilters=''
let g:NERDTreeMapToggleZoom='f'
nnoremap - :NERDTreeFind<CR>
" NERDTrees File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
"}}}

tnoremap <F1> <C-W>N
nnoremap j gj
nnoremap k gk
inoremap jj <ESC>

nnoremap <M-t> :tabe<CR>
nnoremap <M-o> :NERDTreeToggle<CR>
nnoremap <M-q> :call QFWindowToggle()<CR> 
nnoremap <M-l> :call LocWindowToggle()<cr>
nnoremap <M-n> :tn<CR>
nnoremap <M-p> :tp<CR>

inoremap <C-U> <C-G>u<C-U>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
cnoremap <C-w> <S-Right>
cnoremap <C-b> <S-Left>
cnoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <End>
cnoremap <C-k> <Home>
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>

nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>t :tabnew<CR>
nnoremap <Leader>w :w<CR>

"}}}


let g:GtagsCscope_Auto_Load = 1
let g:GtagsCscope_Auto_Map = 1

set csprg=gtags-cscope

" normal command
nmap <leader>cs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>ct :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>ce :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>ci :cs find i <C-R>=expand("<cfile>")<CR><CR>
