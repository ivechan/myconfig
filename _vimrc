call plug#begin('~/vimplug/plugged')
Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'jistr/vim-nerdtree-tabs'
Plug 'ryanoasis/vim-devicons'                              " 使用 NERD 字体让 vim 能显示图标
Plug 'tpope/vim-surround'                                  " 更方便地使用括号，引号等成对出现的符号
Plug 'easymotion/vim-easymotion'                           " easymotion
Plug 'kana/vim-textobj-user'
Plug 'gaving/vim-textobj-argument'                         " argument text-object support
Plug 'kana/vim-textobj-function'
Plug 'bps/vim-textobj-python'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'Yggdroot/indentLine'
Plug 'Yggdroot/LeaderF'
Plug 'jiangmiao/auto-pairs'
Plug 'adriaanzon/vim-textobj-matchit'
Plug 'rakr/vim-one'
" Plug 'tpope/vim-sleuth'
Plug 'liuchengxu/vista.vim'




Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }

Plug 'lucapette/vim-textobj-underscore'
Plug 'vimtaku/vim-textobj-keyvalue'
Plug 'wellle/targets.vim'                                  " provides additional text objects
Plug 'junegunn/rainbow_parentheses.vim'                    " rainbow parentheses
Plug 'tpope/vim-repeat'                                    " repeat for vim-surround
Plug 'tpope/vim-unimpaired'                                " Pairs of handy bracket mappings
Plug 'godlygeek/tabular'                                   " 更简单地对齐
Plug 'SirVer/ultisnips'                                    " snippets框架
Plug 'ivechan/vim-snippets'                                " 具体某个语言的snippets, 自定义
Plug 'valloric/youcompleteme'                              " 补全框架
Plug 'ivechan/echodoc.vim'                                  " 补全的时候，在 statusline 显示函数原型
Plug 'tpope/vim-commentary'                                " 使用 gc 来注释
Plug 'w0rp/ale'                                            " 异步代码检查 (Linting) 框架
Plug 'maximbaz/lightline-ale'                              " 在右下角显示 linting 状态
Plug 'xolox/vim-misc'                                      " 一些补充函数
Plug 'xolox/vim-session'                                   " Session Manager
" Plug 'ivechan/molokai'                                      " monokai 配色
"Plug 'dyng/ctrlsf.vim'
"Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
" Plug 'rstacruz/vim-closer'
Plug 'airblade/vim-rooter'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'rust-lang/rust.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'neomake/neomake'
                                                           " Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'                               " statusline 插件
                                                           " Plug 'vim-scripts/gtags.vim'              " 这个太老了，自行去 GNU Global下载
                                                           " Plug 'nathanaelkane/vim-indent-guides'    " 显示 indent，不过一般不用
Plug 'jsfaint/gen_tags.vim'
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}     " 自动 pep8 indent
Plug 'hdima/python-syntax'                                 " 增强对 Python 语法支持
Plug 'octol/vim-cpp-enhanced-highlight', {'for': 'cpp'}    " 增强对 C++ 支持
Plug 'lervag/vimtex'
Plug 'NLKNguyen/papercolor-theme'
"
Plug 'ivechan/taggy'
"Plug 'ivechan/gtags.vim'
call plug#end()
call glaive#Install()

let mapleader = ' '          " change leader key to <space>
let g:mapleader = ' '        " change leader key to <space>

syntax enable
filetype plugin indent on          
packadd! matchit
"packadd! taggy
set nocompatible



let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum" " true color and colorscheme UI and font
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum" " true color and colorscheme UI and font


let python_highlight_all = 1

set termguicolors              " true color and colorscheme UI and font
set background=light
set guioptions=0               " 不需要一些 gui，影响可视区域
"set guifont=Fira\ Mono:h10   " NERD 字体，可以显示图标, https://github.com/ryanoasis/nerd-fonts
set guifont=FuraMono\ NF:h10   " NERD 字体，可以显示图标, https://github.com/ryanoasis/nerd-fonts
let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }
" colorscheme PaperColor            " 最好的颜色方案
colorscheme one            " 最好的颜色方案
"set iskeyword-=_               " 让vim把vim当成分隔符
set fileformat=unix
set fileencoding=utf-8
set enc=utf-8
"set langmenu=en_US  " 将 vim 语言设置为 en,主要应对中文环境下乱码问题
"let $LANG='en'
source $VIMRUNTIME/delmenu.vim 
source $VIMRUNTIME/menu.vim
set history=200               " 最大2000条历史，够用了吧？
set autoread<                " 　文件修改后自动载入
set laststatus=2               " Always display the statusline in all windows
set showtabline=2              " Always display the tabline, even if there is only one tab
set noshowmode                 " Hide the default mode text (e.g. -- INSERT -- below the statusline), also for echodoc setting
set tabstop=4                  " show existing tab with 4 space width
set shiftwidth=4               " when indenting with '>' , using 4 space width
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
set updatetime=300
"setlocal spell spelllang=en_us

"set wildmode=list:longest,full
" Show @@@ in the last line if it is truncated.
set display=truncate
set ignorecase
set smartcase
set gdefault                   " 在substitute命令的时候，默认执行整行内的匹配项而不是一个
set incsearch                  " 在执行搜索/命令的时候，及时显示到那里
set hlsearch                   " highlight search result
set textwidth=80
set colorcolumn=80
set backspace=indent,eol,start
set dictionary+=~/vimfiles/scowl/wordlist
" created by http://app.aspell.net/create

set wildignore+=.o,*.bak,*~,*.sw?,*.aux,*.toc,*.git,*.svn,*.so,*.a,*.pyc,*.aux,*.toc,*.exe,*.pb " 隐藏一些自动生成的文件
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
" Revert with ":iunmap <C-U>".
inoremap <C-U> <C-G>u<C-U>
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC> " 防止F1误触
nnoremap <F1> <ESC> " F1误触
vnoremap <F1> <ESC> " F1误触
inoremap jj <ESC>
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>t :tabnew<CR>
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

nnoremap <M-t> :tabe<CR>
set shortmess+=c " dot't give ins-completion-menu message

" AsyncRun
let g:asyncrun_open = 6 " set the quickfix window 6 lines height.
let g:asyncrun_bell = 1 " ring the bell to notify you job finished
" F10 or m-q to toggle quickfix window
"nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>
"nnoremap <M-q> :call asyncrun#quickfix_toggle(6)<cr>
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
nnoremap <M-q> :call QFWindowToggle()<CR> 

function! LocWindowToggle()
    let s:locid = getloclist(0, {'winid' : 0}).winid
    if s:locid == 0
        execute "lopen " . g:LocList_Win_Height
    else
        lclose
    endif
endfunction
nnoremap <M-l> :call LocWindowToggle()<cr>

" parentheses color
au VimEnter * RainbowParentheses
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{}', '}']]
let g:rainbow#blacklist = [233, 234]


nnoremap s <Plug>(easymotion-s2)
nnoremap t <Plug>(easymotion-t2)


" ag
if executable('rg')
    let g:ackprg = 'ag --vimgrep'
endif
"cnoreabbrev Ack Ack!
"nnoremap <Leader>a :Ack!<Space>
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
" let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
nnoremap <Leader>a :Leaderf rg<Space>
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
"nnoremap <Leader>a :Ack!<Space>
"nnoremap <leader>ff :Files<CR>
nnoremap <leader>ff :Leaderf file<CR>
"nnoremap <leader>f :Files<CR>
nnoremap <leader>f :Leaderf file<CR>
"nnoremap <leader>fl :BLines<CR>
"nnoremap <leader>l :BLines<CR>
nnoremap <leader>l :Leaderf line<CR>
"nnoremap <leader>fm :Marks<CR>
"nnoremap <leader>fw :Windows<CR>
"nnoremap <leader>fb :Buffers<CR>
"nnoremap <leader>b :Buffers<CR>
nnoremap <leader>b :Leaderf buffer<CR>
"nnoremap <leader>fg :GFiles<CR>
"nnoremap <leader>fd :GFiles?<CR>
"nnoremap <leader>ft :Tags<CR>
"nnoremap <leader>fp :BTags<CR>
nnoremap <leader>fp :Leaderf bufTag<CR>
"nnoremap <leader>fa :Ag<CR>
"nnoremap <leader>p :Vista finder<CR>

"nnoremap <leader>g :GFiles<CR>
"nnoremap <leader>gg :GFiles<CR>
"nnoremap <leader>gd :GFiles?<CR>
"nnoremap <leader>gp :Gpush
"nnoremap <leader>gs :Gstatus<CR>
"nnoremap <leader>gc :Gcommit<Space>
"nnoremap <leader>m :History<CR>
"nnoremap <M-m> :History<CR>
nnoremap <M-m> :LeaderfMru<CR>
"let g:fzf_buffers_jump = 1
"let g:fzf_tags_command = 'ctags -R'
"function! s:ag_with_opts(arg, bang)
"  let tokens  = split(a:arg)
"  let ag_opts = join(filter(copy(tokens), 'v:val =~ "^-"'))
"  let query   = join(filter(copy(tokens), 'v:val !~ "^-"'))
"  call fzf#vim#ag(query, ag_opts, a:bang ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'), a:bang)
"endfunction

"function! s:rg_with_opts(arg, bang)
"  let tokens  = split(a:arg)
"  let rg_opts = join(filter(copy(tokens), 'v:val =~ "^-"'))
"  let query   = join(filter(copy(tokens), 'v:val !~ "^-"'))
"  call fzf#vim#grep(query, rg_opts, a:bang ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'), a:bang)
"endfunction

"autocmd VimEnter * command! -nargs=* -bang Ag call s:ag_with_opts(<q-args>, <bang>0)
""autocmd VimEnter * command! -nargs=* -bang Rg call s:rg_with_opts(<q-args>, <bang>0)

"command! -bang -nargs=? -complete=dir Files
"\ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
"let g:fzf_colors =
"\ { 'fg':      ['fg', 'Normal'],
"\ 'bg':      ['bg', 'Normal'],
"\ 'hl':      ['fg', 'Comment'],
"\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"\ 'hl+':     ['fg', 'Statement'],
"\ 'info':    ['fg', 'PreProc'],
"\ 'border':  ['fg', 'Ignore'],
"\ 'prompt':  ['fg', 'Conditional'],
"\ 'pointer': ['fg', 'Exception'],
"\ 'marker':  ['fg', 'Keyword'],
"\ 'spinner': ['fg', 'Label'],
"\ 'header':  ['fg', 'Comment'] }
"nnoremap <Leader>a :Ag<Space>
"nnoremap <Leader>a :Rg<Space>
"nnoremap <Leader>r :Rg<Space>
nnoremap <Leader>; :

" Session Plugin Config
:let g:session_autosave = 'no' " 不自动保存session

" ale
let g:airline#extensions#ale#enabled = 0 " 使用lightline，所以关闭airline支持
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_sign_column_always = 1
let g:ale_set_signs = 1

"\ 'cpp':['clang', 'gcc', 'cppcheck', 'flawfinder'],
let g:ale_linters = {'python': ['flake8'], 
            \   'rust': ['rustc', 'cargo'],
            \ 'tex':['chktex', 'lacheck'] }
let g:ale_lint_on_text_changed = 'never' " 仅在打开文件和保存的时候 Lint 
let g:ale_lint = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
" ALE 快捷键快速跳转
" nmap <silent> <M-k> <Plug>(ale_previous_wrap) 
" nmap <silent> <M-j> <Plug>(ale_next_wrap)
nmap <silent> <M-k> :lprevious<CR>
nmap <silent> <M-j> :lnext<CR>

" YCM 设置
let g:ycm_key_invoke_completion = '<C-x><C-o>'
let g:ycm_add_preview_to_completeopt = 0 " preview窗口影响布局
let g:ycm_show_diagnostics_ui = 0 " 已经有更好的ALE
set completeopt=menu,menuone
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_use_ultisnips_completer = 1
let g:ycm_complete_in_strings=1
let g:ycm_python_binary_path = 'python'
let g:ycm_auto_trigger=1
let g:ycm_max_num_candidates = 30
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
" let g:ycm_clangd_binary_path = exepath("clangd")
nnoremap <leader>jd :YcmCompleter GoTo<CR> 
nnoremap <leader>jr :YcmCompleter GoToReferences<CR> 
nnoremap <S-k> :YcmCompleter GetDoc<CR> 


" get_tags
let g:gen_tags#ctags_auto_gen = 1
let g:gen_tags#gtags_auto_gen = 1


" tags setting
" 所生成的数据文件的名称
let g:gutentags_modules = []
let g:gutentags_ctags_tagfile = '.tags'
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif

" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', 'xmake.lua', '.git', '.project']

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
let g:gutentags_cache_dir = s:vim_tags

let g:gutentags_plus_nomap = 1
" 禁止插件自动加载gtags数据库，用plus插件来控制
" noremap <silent> <leader>cs :GscopeFind s <C-R><C-W><cr>
" noremap <silent> <leader>cg :GscopeFind g <C-R><C-W><cr>
" noremap <silent> <leader>cc :GscopeFind c <C-R><C-W><cr>
" noremap <silent> <leader>ct :GscopeFind t <C-R><C-W><cr
" noremap <silent> <leader>ca :GscopeFind a <C-R><C-W><cr>
" noremap <silent> <leader>cd :GscopeFind d <C-R><C-W><cr>

" gtags 配置
" https://www.gnu.org/software/global/
let $GTAGSLABEL = 'native-pygments'

if has('win32')
    let $GTAGSCONF = 'C:\\Users\\lhche\\gtags.conf' "必须重新配置
else
    let $GTAGSCONF = '/home/jing/gtags.conf'
endif
let gutentags_define_advanced_commands = 1
" 配置 ctags 的参数 https://github.com/universal-ctags/ctags
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extras=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px-d']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px-d']
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
"let g:gutentags_ctags_extra_args += ['--exclude=@.gitignore']
"let g:gutentags_ctags_extra_args += ['--exclude=@.ignore']
"let Gtags_No_Auto_Jump=1
"let g:Gtags_Close_When_Single=1 " when single and jump

let g:gutentags_auto_add_gtags_cscope = 0

" 自动启动echodoc
let g:echodoc#enable_at_startup=1
" 启用 python 高亮
"let python_highlight_all = 1

" UltiSnip插件
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"

" enable directwrite renderoption in windows
if has('win32') 
    if !has('nvim')
        set renderoptions=type:directx,renmode:0,taamode:1
    endif
endif

if has('nvim')
    set inccommand=nosplit
endif

"lightline configuration
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ },
      \ 'component': {
      \  'tagbar': '%{tagbar#currenttag("%s", "", "f")}',
      \  'taggy': '%{Taggy_Get_Current_Tag()}',
      \  },
      \ }
function! MyFiletype()
return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
  endfunction

" 在右下角显示 Linting状态
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }
let g:lightline.active = {
    \ 'left': [ [ 'mode', 'paste' ],
    \           ['gitbranch', 'readonly', 'filename', 'modified' ],
    \           ['taggy']
    \         ],
    \ 'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings'],
    \            [ 'lineinfo' ],
    \            [ 'percent' ],
    \            [ 'fileformat', 'fileencoding', 'filetype' ] ,
    \          ]
    \ }
function! Lightline_Tab_Absolutepath(n) abort
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let _ = expand('#'.buflist[winnr - 1])
  return _ !=# '' ? _ . ' ' .WebDevIconsGetFileTypeSymbol(): '[No Name]'
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

" 使用NERD 字体下的图标显示
if has('gui_running')
    let g:lightline#ale#indicator_checking = "\uf110"
    let g:lightline#ale#indicator_warnings = "\uf071"
    let g:lightline#ale#indicator_errors = "\uf05e"
    let g:lightline#ale#indicator_ok = "\uf00c"
end


" Gtags 快捷键
"nnoremap <leader>g :Gtags<SPACE>
"nnoremap <leader>c :GtagsCursor<CR>
"nnoremap <leader>p :Gtags -f %<CR>
"nnoremap <M-p> :Gtags -f %<CR>

nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>
"nnoremap <C-\><C-]> :GtagsCursorAndJump<CR>

nnoremap <M-f> :NERDTreeFind<CR>
nnoremap <M-n> :NERDTreeToggle<CR>
nnoremap <F10> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

let g:NERDTreeMapUpdirKeepOpen='h'
let g:NERDTreeMapChangeRoot='l'
let g:NERDTreeMapToggleFilters=''
let g:NERDTreeMapToggleZoom='f'
nnoremap - :NERDTreeFind<CR>
" set working directory to git project root
" or directory of current file if not git project
function! SetProjectRoot()
  " default to the current file's directory
  lcd %:p:h
  let git_dir = system("git rev-parse --show-toplevel")
  " See if the command output starts with 'fatal' (if it does, not in a git repo)
  let is_not_git_dir = matchstr(git_dir, '^fatal:.*')
  " if git project, change local directory to git project root
  if empty(is_not_git_dir)
    lcd `=git_dir`
  endif
endfunction

command! CD silent! call SetProjectRoot()
" inoremap lkj <ESC>:w<CR>
nnoremap <Leader>w :w<CR>
" nnoremap <M-f> :CD<CR>

let g:tagbar_width = 35
let g:tagbar_left = 1
nnoremap <silent> <F12> :TagbarToggle<CR>



" Vimtex
let g:vimtex_compiler_method = 'latexmk'

let g:vimtex_compiler_latexmk = {
    \ 'backend' : "jobs",
    \ 'background' : 1,
    \ 'build_dir' : './build',
    \ 'callback' : 0,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-xelatex',
    \ 'pdflatex'         : '-pdf',
    \ 'lualatex'         : '-lualatex',
    \ 'xelatex'          : '-xelatex',
    \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
    \ 'context (luatex)' : '-pdf -pdflatex=context',
    \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
    \}
if !exists('g:ycm_semantic_triggers')
let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
"let g:vimtex_view_general_viewer = 'mupdf'
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options
    \ = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'

let g:vimtex_compiler_callback_hooks = ['Latexmk_task_done']
"let g:vimtex_compiler_latexmk = {'callback' : 0}

function! Latexmk_task_done(status)
    if a:status == 1
        echom "LaTeX compilation succeeded."
    elseif a:status == 0
        echom "LaTeX compilation failed."
    else
        echom "Unkown status."
    endif
endfunction

"let $success_cmd = 'gvim.exe --remote-expr "vimtex#compiler#callback(1)"'
"let $success_cmd = 'cl-2-dde-1.0.exe @= =SUMATRA= =control= =[Open("%bm.pdf",0,1,1)]='
"let $failure_cmd = 'gvim.exe --remote-expr "vimtex#compiler#callback(0)"'

let g:vimtex_compiler_progname=v:progname
"set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
    let g:Lf_PreviewResult = {
            \ 'File': 0,
            \ 'Buffer': 0,
            \ 'Mru': 0,
            \ 'Tag': 0,
            \ 'BufTag': 0,
            \ 'Function': 0,
            \ 'Line': 0,
            \ 'Colorscheme': 0
            \}

function! DeleteHiddenBuffers()
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction
command! -nargs=0 DeleteHiddenBuffers call DeleteHiddenBuffers()
let g:tagbar_type_python = {
    \ 'ctagsargs' : '-f - --format=2 --excmd=pattern --extra --fields=nksmt'
\ }

function! Switch_header_source(header)
    if a:header == 1
        let s:ext = '.h'
    else
        let s:ext = '.cpp'
    endif
    let s:cfile = expand('%:r')
    if filereadable(s:cfile . s:ext)
        execute ":e " . s:cfile . s:ext
    else
        echo s:cfile . s:ext . ' does not exist'
    endif
endfunction

nnoremap [h :call Switch_header_source(1)<CR>
nnoremap ]h :call Switch_header_source(0)<CR>

" NERDTrees File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

set shortmess+=T
nnoremap <leader>h :Startify<CR>
let g:rooter_use_lcd = 1
let g:rooter_silent_chdir = 1
let g:rooter_patterns = ['.root', '.xmake/', '.git/', 'xmake.lua']

augroup coderunner
    autocmd!
    autocmd FileType c,cpp let g:ycm_show_diagnostics_ui = 1
    autocmd FileType c,cpp nnoremap <silent> <F9> :AsyncRun xmake build<CR>
    autocmd FileType c,cpp nnoremap <silent> <F9> :AsyncRun xmake build<CR>
    autocmd FileType c,cpp nnoremap <silent> <leader>b :AsyncRun xmake build<CR>
    autocmd FileType c,cpp nnoremap <silent> <leader>r :AsyncRun xmake run<cr>
    autocmd FileType c,cpp nnoremap <silent> <F5> :AsyncRun xmake run<cr>
    autocmd FileType c,cpp nnoremap <silent> <leader>k :AsyncRun xmake project -k compile_commands<cr>

    autocmd FileType rust nnoremap <F9> :Neomake rustc<CR>
    autocmd FileType rust nnoremap <F5> :RustRun<CR>
    autocmd FileType rust nnoremap <leader>b :AsyncRun cargo build<CR>
    autocmd FileType rust nnoremap <leader>r :AsyncRun cargo run<CR>
    "nnoremap <silent> <F9> :AsyncRun g++ -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
    "nnoremap <silent> <F5> :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
augroup END
command! CompileCommands :AsyncRun xmake project -k compile_commands<cr>
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif
"let g:ycm_use_clangd = 'never'
let g:asyncrun_encs = 'gbk'

let g:ycm_log_level = 'debug'

let g:NERDTreeWinPos = 'right'
let g:NERDTreeWinSize = 50
"let g:indentLine_char = '⎸'
"let g:indentLine_color_gui = '#AAAAAA'

" Name: Star search
" Author: Name5566 <name5566@gmail.com>
" Version: 0.1.1

if exists('loaded_starsearch')
	finish
endif
let loaded_starsearch = 1

let s:savedCpo = &cpo
set cpo&vim

function! s:VStarsearch_searchCWord()
	let wordStr = expand("<cword>")
	if strlen(wordStr) == 0
		echohl ErrorMsg
		echo 'E348: No string under cursor'
		echohl NONE
		return
	endif
	
	if wordStr[0] =~ '\<'
		let @/ = '\<' . wordStr . '\>'
	else
		let @/ = wordStr
	endif

	let savedUnnamed = @"
	let savedS = @s
	normal! "syiw
	if wordStr != @s
		normal! w
	endif
	let @s = savedS
	let @" = savedUnnamed
endfunction

" https://github.com/bronson/vim-visual-star-search/
function! s:VStarsearch_searchVWord()
	let savedUnnamed = @"
	let savedS = @s
	normal! gv"sy
	let @/ = '\V' . substitute(escape(@s, '\'), '\n', '\\n', 'g')
	let @s = savedS
	let @" = savedUnnamed
endfunction

nnoremap <silent> * :call <SID>VStarsearch_searchCWord()<CR>:set hls<CR>
vnoremap <silent> * :<C-u>call <SID>VStarsearch_searchVWord()<CR>:set hls<CR>

let &cpo = s:savedCpo

let g:neomake_open_list = 2

let g:AutoPairsShortcutToggle = ''

call maktaba#syscall#SetUsableShellRegex('\v^/bin/sh|cmd|cmd\.exe|command\.com$')
" Fix a bug. https://github.com/google/vim-maktaba/issues/215
nnoremap <M-n> :NERDTreeToggle<CR>
