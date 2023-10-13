" {{{ Plug
call plug#begin('~/.vimplug/plugged')
Plug 'scrooloose/nerdtree',  { 'on': ['NERDTreeToggle', 'NERDTreeFind' ]}
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'jistr/vim-nerdtree-tabs'
" Plug 'ryanoasis/vim-devicons'                              " 使用 NERD 字体让 vim 能显示图标
Plug 'tpope/vim-surround'                                  " 更方便地使用括号，引号等成对出现的符号
Plug 'easymotion/vim-easymotion'                           " easymotion
Plug 'tpope/vim-fugitive'
Plug 'kana/vim-textobj-user'
Plug 'gaving/vim-textobj-argument'                         " argument text-object support
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
" Plug 'Yggdroot/indentLine'
Plug 'Yggdroot/LeaderF'
Plug 'tamago324/LeaderF-filer'
Plug 'mileszs/ack.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'adriaanzon/vim-textobj-matchit'
Plug 'rakr/vim-one'
" Plug 'tpope/vim-sleuth'
Plug 'cocopon/iceberg.vim'
Plug 'chriskempson/base16-vim'
Plug 'wellle/targets.vim'                                  " provides additional text objects
Plug 'junegunn/rainbow_parentheses.vim'                    " rainbow parentheses
Plug 'tpope/vim-repeat'                                    " repeat for vim-surround
Plug 'tpope/vim-unimpaired'                                " Pairs of handy bracket mappings
Plug 'godlygeek/tabular'                                   " 更简单地对齐
Plug 'SirVer/ultisnips'                                    " snippets框架
Plug 'ivechan/vim-snippets'                                " 具体某个语言的snippets, 自定义
" Plug 'valloric/youcompleteme'                              " 补全框架
Plug 'tpope/vim-commentary'                                " 使用 gc 来注释
Plug 'xolox/vim-misc'                                      " 一些补充函数
Plug 'xolox/vim-session', {'on': ['OpenSession', 'SaveSession']}                                   " Session Manager
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'skywind3000/asyncrun.vim'
                                                           " Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'                               " statusline 插件
                                                           " Plug 'vim-scripts/gtags.vim'              " 这个太老了，自行去 GNU Global下载
                                                           " Plug 'nathanaelkane/vim-indent-guides'    " 显示 indent，不过一般不用
" Plug 'jsfaint/gen_tags.vim'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'skywind3000/gutentags_plus'
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
" {{{ 外观
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum" " true color and colorscheme UI and font
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum" " true color and colorscheme UI and font
set termguicolors              " true color and colorscheme UI and font
"set background=light
set background=light
set winaltkeys=no
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
colorscheme PaperColor            " 最好的颜色方案
"}}}

" {{{  Minimal Setting
set fileformat=unix
set fileencoding=utf-8
set enc=utf-8
source $VIMRUNTIME/delmenu.vim 
source $VIMRUNTIME/menu.vim
set history=200               " 最大2000条历史，够用了吧？
set autoread<                " 　文件修改后自动载入
set laststatus=2               " Always display the statusline in all windows
set showtabline=2              " Always display the tabline, even if there is only one tab
set noshowmode                 " Hide the default mode text (e.g. -- INSERT -- below the statusline), also for echodoc setting
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
" if has('multi_byte') && &encoding ==# 'utf-8'
"   let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
" else
"   let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
" endif
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
let g:asyncrun_encs = 'gbk'
let g:asyncrun_open = 6 " set the quickfix window 6 lines height.
let g:asyncrun_bell = 1 " ring the bell to notify you job finished
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

"{{{ parentheses color
augroup rainbow_lisp
    autocmd!
    autocmd FileType c,cpp,python,rust,go RainbowParentheses
augroup END
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{}', '}']]
let g:rainbow#blacklist = [233, 234]
"}}}

"{{{" ag
if executable('rg')
    let g:ackprg = 'rg --vimgrep'
endif
"}}}

" {{{Leaderf
let g:Lf_UseVersionControlTool = 0
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
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
let s:nord0 = ["#2E3440", "NONE"]
let s:nord1 = ["#3B4252", 0]
let s:nord2 = ["#434C5E", "NONE"]
let s:nord3 = ["#4C566A", 8]
let s:nord4 = ["#D8DEE9", "NONE"]
let s:nord5 = ["#E5E9F0", 7]
let s:nord6 = ["#ECEFF4", 15]
let s:nord7 = ["#8FBCBB", 14]
let s:nord8 = ["#88C0D0", 6]
let s:nord9 = ["#81A1C1", 4]
let s:nord10 = ["#5E81AC", 12]
let s:nord11 = ["#BF616A", 1]
let s:nord12 = ["#D08770", 11]
let s:nord13 = ["#EBCB8B", 3]
let s:nord14 = ["#A3BE8C", 2]
let s:nord15 = ["#B48EAD", 5]
let g:Lf_PopupPalette = {
    \  'light': {
    \      'Lf_hl_match': {
    \                'gui': 'NONE',
    \                'font': 'NONE',
    \                'guifg': 'NONE',
    \                'guibg': '#303136',
    \                'cterm': 'NONE',
    \                'ctermfg': 'NONE',
    \                'ctermbg': '236'
    \              },
    \      'Lf_hl_cursorline': {
    \                'gui': 'NONE',
    \                'font': 'NONE',
    \                'guifg': 'NONE',
    \                'guibg': '#303136',
    \                'cterm': 'NONE',
    \                'ctermfg': 'NONE',
    \                'ctermbg': '236'
    \              },
    \      },
    \  'dark': {
    \       'Lf_hl_popup_inputMode': {
    \                'gui': 'NONE',
    \                'font': 'NONE',
    \                'guifg': '#3B4252',
    \                'guibg': '#88C0D0',
    \                'cterm': 'NONE',
    \                'ctermfg': 'NONE',
    \                'ctermbg': 'NONE'
    \        },
    \       'Lf_hl_popup_normalMode': {
    \                'gui': 'NONE',
    \                'font': 'NONE',
    \                'guifg': '#3B4252',
    \                'guibg': '#88C0D0',
    \                'cterm': 'NONE',
    \                'ctermfg': 'NONE',
    \                'ctermbg': 'NONE'
    \        },
    \       'Lf_hl_popup_window': {
    \                'gui': 'NONE',
    \                'font': 'NONE',
    \                'guifg': '#88C0D0',
    \                'guibg': '#3B4252',
    \                'cterm': 'NONE',
    \                'ctermfg': 'NONE',
    \                'ctermbg': 'NONE'
    \        },
    \       'Lf_hl_cursorline': {
    \                'gui': 'NONE',
    \                'font': 'NONE',
    \                'guifg': '#ECEFF4',
    \                'guibg': 'NONE',
    \                'cterm': 'NONE',
    \                'ctermfg': 'NONE',
    \                'ctermbg': 'NONE'
    \        },
    \       'Lf_hl_popup_inputText': {
    \                'gui': 'NONE',
    \                'font': 'NONE',
    \                'guifg': '#ECEFF4',
    \                'guibg': '#4C566A',
    \                'cterm': 'NONE',
    \                'ctermfg': 'NONE',
    \                'ctermbg': 'NONE'
    \        },
    \      }
    \  }
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

" {{{ Session Plugin Config
let g:session_autosave = 'no' " 不自动保存session
"}}}

" {{{YCM 设置
let g:ycm_confirm_extra_conf = 0
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
let g:ycm_log_level = 'info'
let g:ycm_auto_trigger=3
let g:ycm_max_num_candidates = 30
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
" let g:ycm_clangd_binary_path = exepath("clangd")
nnoremap <leader>jd :YcmCompleter GoTo<CR> 
nnoremap <leader>jr :YcmCompleter GoToReferences<CR> 
nnoremap gd :YcmCompleter GoTo<CR> 
nnoremap gr :YcmCompleter GoToReferences<CR> 
nnoremap <F12> :YcmCompleter GoTo<CR> 
nnoremap <F11> :YcmCompleter GoTo<CR> 
nnoremap <F10> <C-O>
nnoremap <S-k> :YcmCompleter GetDoc<CR> 
"}}}


" {{{UltiSnip插件
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"
"}}}

" {{{enable directwrite renderoption in windows
if has('win32') 
    if !has('nvim')
        set renderoptions=type:directx,renmode:0,taamode:1
    endif
endif

if has('nvim')
    set inccommand=nosplit
endif
"}}}

" {{{lightline configuration
      " \   'filetype': 'MyFiletype',
      " \   'fileformat': 'MyFileformat',
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \ },
      \ 'component': {
      \  'tagbar': '%{tagbar#currenttag("%s", "", "f")}',
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

" {{{NERDTree setting
if has('gui_running')
    let g:lightline#ale#indicator_checking = "\uf110"
    let g:lightline#ale#indicator_warnings = "\uf071"
    let g:lightline#ale#indicator_errors = "\uf05e"
    let g:lightline#ale#indicator_ok = "\uf00c"
end
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

" {{{set working directory to git project root
" or directory of current file if not git project
function! SetProjectRoot()
  " default to the current file's directory
  try
    lcd %:p:h
    let s:buftype = getbufvar(bufnr(), '&buftype', 'ERROR')
    " Normal buffer
    if s:buftype == '' || s:buftype == 'nowrite' || s:buftype == 'acwrite'
        let s:default_root = gutentags#default_get_project_root(expand("%:p"))
        if s:default_root != "" && isdirectory(s:default_root)
                exe 'lcd' s:default_root
        endif
    endif
  catch /.*/
  endtry
endfunction
command! CD call SetProjectRoot()
"}}}

"{{{  Tagbar
let g:tagbar_width = 35
let g:tagbar_left = 1
" nnoremap <silent> <F12> :TagbarToggle<CR>
"}}}


"{{{ Some useful script and function
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
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
"}}}

"{{{ Code Runner
augroup coderunner
    autocmd!
    autocmd FileType c,cpp let g:ycm_show_diagnostics_ui = 1
    autocmd FileType c,cpp nnoremap <silent> <F9> :AsyncRun -mode=term -pos=right xmake build<CR>
    autocmd FileType c,cpp nnoremap <silent> <F9> :AsyncRun -mode=term xmake build<CR>
    autocmd FileType c,cpp nnoremap <silent> <leader>b :AsyncRun -mode=term -pos=right xmake build<CR>
    autocmd FileType c,cpp nnoremap <silent> <leader>r :AsyncRun -mode=term -pos=right xmake run<cr>
    autocmd FileType c,cpp nnoremap <silent> <F5> :AsyncRun xmake -mode=term run<cr>
    autocmd FileType c,cpp nnoremap <silent> <leader>k :AsyncRun xmake project -k compile_commands<cr>

    autocmd FileType rust nnoremap <F9> :Neomake rustc<CR>
    autocmd FileType rust nnoremap <F5> :RustRun<CR>
    autocmd FileType rust nnoremap <leader>b :AsyncRun cargo build<CR>
    autocmd FileType rust nnoremap <leader>r :AsyncRun cargo run<CR>
    "nnoremap <silent> <F9> :AsyncRun g++ -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
    "nnoremap <silent> <F5> :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
augroup END
command! CompileCommands :AsyncRun xmake project -k compile_commands<cr>
"}}}

"{{{ WebDevicons
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif
let g:webdevicons_enable_nerdtree = 0
"}}}

" {{{star-search https://github.com/bronson/vim-visual-star-search/
" Name: Star search
" Author: Name5566 <name5566@gmail.com>
" Version: 0.1.1
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
"}}}

" {{{ Neomake setting
let g:neomake_open_list = 2
""}}}
"{{{ AutoPair Setting
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutJump = ''

"}}}

" {{{ Key Mapping
nnoremap s <Plug>(easymotion-s2)
nnoremap t <Plug>(easymotion-t2)

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

" {{{Auto Format when saving file
function! Formatonsave()
  let l:formatdiff = 1
  py3f C:\\Program Files\\LLVM\share\\clang\\clang-format.py
endfunction
" autocmd BufWritePre *.h,*.cc,*.cpp,*.c call Formatonsave()
" autocmd BufEnter * call SetProjectRoot()
"}}}

" Alt keys stuff {{{
function! Terminal_MetaMode(mode)
    set ttimeout
    if $TMUX != ''
        set ttimeoutlen=30
    elseif &ttimeoutlen > 80 || &ttimeoutlen <= 0
        set ttimeoutlen=80
    endif
    if has('nvim') || has('gui_running')
        return
    endif
    function! s:metacode(mode, key)
        if a:mode == 0
            exec "set <M-".a:key.">=\e".a:key
        else
            exec "set <M-".a:key.">=\e]{0}".a:key."~"
        endif
    endfunc
    for i in range(10)
        call s:metacode(a:mode, nr2char(char2nr('0') + i))
    endfor
    for i in range(26)
        call s:metacode(a:mode, nr2char(char2nr('a') + i))
        call s:metacode(a:mode, nr2char(char2nr('A') + i))
    endfor
    if a:mode != 0
        for c in [',', '.', '/', ';', '[', ']', '{', '}']
            call s:metacode(a:mode, c)
        endfor
        for c in ['?', ':', '-', '_']
            call s:metacode(a:mode, c)
        endfor
    else
        for c in [',', '.', '/', ';', '{', '}']
            call s:metacode(a:mode, c)
        endfor
        for c in ['?', ':', '-', '_']
            call s:metacode(a:mode, c)
        endfor
    endif
endfunc
call Terminal_MetaMode(0)

let &t_TI="" " disable modifyOtherKeys, use ESC mode to send alt keys.
let &t_LE=""
" }}}



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
