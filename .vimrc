" ============================================================================
" newpolaris's vim
"
"---------------------------------------------- ----------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" e! ++enc=euc-kr

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
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Plugin 'minibufexpl.vim'
Plugin 'SearchCompl.vim'
Plugin 'gitignore'
Plugin 'fugitive.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/gv.vim'
" Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'bufexplorer.zip'
Plugin 'Conque-GDB'
Plugin 'mru.vim'
Plugin 'extradite.vim'
Plugin 'HerringtonDarkholme/vim-worksheet'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

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
"
" ============================================================================
" Simple settings
"
set ts=4
set vb
set lz
set cb=unnamed
set nu
set langmenu=en_US.UTF-8
set guioptions-=m
set guioptions-=T
set ofu=syntaxcomplete#Complete
set history=10000
set autowrite
set autoread
set tabstop=4
set shiftwidth=4
" set expandtab
set autoindent
set noautochdir
set hlsearch
set ignorecase

" auto folding type indent
set fdm=syntax

" 항상 status 라인을 표시하도록 함
set ls=2

" 줄 간격 설정
set lsp=1

" auto commenting disable
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Is it correc the disabling backspace some word?
set backspace=indent,eol,start

" setting no warp text
set nowrap

" disabling winaltkeys
set winaltkeys=no

set sc

" disabling cycling scan(search) 
" set nows

syntax on

if has("win32")
    language mes en
    set imactivatekey=S-space
endif

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
" pyflakes-vim
filetype plugin on
filetype on

filet plugin indent on

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

set fileformat=unix
set encoding=utf-8
"if has("unix")
"    set encoding=euc-kr
"elseif has ("win32")
"    set encoding=cp949
"endif

" Don't work
"" Change to the directory the file in your current buffer is in
"if(has("autocmd"))
"   autocmd BufEnter * :cd %:p:h
"endif

"if exists('+autochdir')
set autochdir
"else
"   autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
"endif

" code complete seeting
let g:completekey = "<C-j>"   "hotkey ctrl-j

" map leader as , instead of \
let mapleader = ","
let g:mapleader = ","

" Fast save
nmap <Leader>s :sp<CR>
nmap <Leader>v :vs<CR>

" Easy Tags.
nmap <C--> :po<CR>
nmap <C-_> :ta<CR>

" nnoremap <esc> :noh<return><esc>

" ============================================================================
" diffs opt
" set diffopt+=vertical
" ============================================================================

" ============================================================================
" Erlang support, not working removed?
"
" g:erlangHighlightBif = 1
" g:erlangFold = 1
" g:erlangFoldSplitFunction = 1
" ============================================================================

" ============================================================================
" MiniBufExpl Colors
" ============================================================================
hi MBEVisibleActive guifg=#A6DB29 guibg=fg
hi MBEVisibleChangedActive guifg=#F1266F guibg=fg
hi MBEVisibleChanged guifg=#F1266F guibg=fg
hi MBEVisibleNormal guifg=#5DC2D6 guibg=fg
hi MBEChanged guifg=#CD5907 guibg=fg
hi MBENormal guifg=#808080 guibg=fg

" ============================================================================
" Set shell as bash. Do not working
" let Msys='msys/1.0/'
" let MsysDir=substitute(Msys, '\ ', '\\ ', "g")
" let ExecThis='set shell=' . MsysDir . '\bin\sh.exe\ --login\ -i'
" exe ExecThis
" ============================================================================

" ============================================================================
" VCSCommand settings

" let g:VCSCommandHGExec= 'c:\Home\TortoiseHg\hg.exe'
" ============================================================================

" ============================================================================
" Latex settings
"
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
" IMPORTANT: TODO: confict with VCSCommand. Sad
au BufRead,BufNewFile *.tex    set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
" ============================================================================

let $win7vc="c:/VS10.0/VC/"

set tags=./tags,../tags,../../tags

if filereadable("tags")
    set tags+=$PWD/tags
endif

if has("win32")
"   set tags+=c:/Mingw/include/tags
"   set tags+=c:/VS10.0/vc/crt/vccrt,c:/VS10.0/vc/include/vcinclude
"   set tags+=c:/boost_1_43_0/tags
"   set tags+=c:/DXSDK/Include/tags
endif	

" set cscopequickfix=s-,c-,d-,i-,t-,e-

if has("cscope")
    if has("win32")
        set csprg=c:/gnuwin32/bin/cscope.exe
    else
    	set csprg=/usr/bin/cscope
    endif
	
    set csto=1
    set cst
    set csverb
    set cspc=3

    "add any database in current dir
    if filereadable("cscope.out")
        cs add cscope.out $PWD
    else
        let cscope_file=findfile("cscope.out", ".;")
        let cscope_pre=matchstr(cscope_file, ".*/")
        "echo cscope_file
        if !empty(cscope_file) && filereadable(cscope_file)
            exe "cs add" cscope_file cscope_pre
        endif
    endif
endif

" nodisplay cscope db add message
set nocsverb
if has("win32")
"       cs add c:/MinGW/include/cscope.out "c:/MinGW/include
"	cs add c:/Users/newpolaris/Projects/Ogre3D/cscope.out ~/Projects/Ogre3D
"	cs add c:/VS10.0/VC/include/cscope.out
"	cs add c:/VS10.0/VC/crt/cscope.out
"       cs add c:/boost_1_43_0/cscope.out 
endif
set csverb

" ============================================================================
" MiniBufExploler settings
"
" 2011:6:30 Due to multiple open bugs, deleted
"
let g:miniBufExplMaxSize = 2
" let g:miniBufExplMapWindowNavVim = 1 
" let g:miniBufExplMapWindowNavArrows = 1 
" let g:miniBufExplMapCTabSwitchBufs = 1 
" let g:miniBufExplModSelTarget = 1
" ============================================================================

" ============================================================================
" Design
"
colorscheme desert

hi Pmenu guifg=#f6f3e8 guibg=#444444 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi PmenuSel guifg=#000000 guibg=#cae682 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi PmenuSbar guifg=black guibg=white gui=NONE ctermfg=black ctermbg=white cterm=NONE

" status 라인이 어떻게 나오게 할 지 지정
" type1:
" set statusline=\%<%f%m\ %h%r%h%w%y%=%{\(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}\ \ %<%4l:%3v%a\ \ [\ %p/\ %P]\ %a
" type2:
" set statusline=\%<%f\ %h%m%r\ \ %(%l:%c%V%)\ [%P]
" type3:
" set statusline=%<%f\|%m%r%h%y\ [%Y/%{&ff}/%{\(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}]%=[%04l(%p%%\|%P),%04v\|\%03.3b,\%02.2B]
" type4:
"set statusline=\%<%F%h%m%r%h%w%y\ %{strftime(\"%Y/%m/%d-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P
"
" ============================================================================

" ============================================================================
" TList:
"
nnoremap <silent> <C-L> :Tlist<CR>
nnoremap <silent> <A-U> :TlistUpdate<CR>
nnoremap <silent> <C-;> :TlistSync<CR>

let Tlist_Use_Right_Window = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_WinWidth = 35
" ============================================================================

au BufNewFile,BufRead *.fx setf fx

" ============================================================================
" FuzzyFinder Settings
"
" From web author kwon31xi
let g:FuzzyFinderOptions = { 'Base':{}, 'Buffer':{}, 'File':{}, 'Dir':{}, 'MruFile':{}, 'MruCmd':{}, 'FavFile':{}, 'Tag':{}, 'TaggedFile':{}}

" 특정 파일 제외
let g:FuzzyFinderOptions.File.excluded_path = '\v\~$|\.o$|\.obj$|\.exe$|\.bak$|\.swp$|\.class$|\.settings$|CVS|((^|[/\\])\.[/\\]$)'

" 대소문자 구분하기 (0 : 대소문자 구분, 1 : 대소문자 구분 안함)
let g:FuzzyFinderOptions.Base.ignore_case = 1

" Find file in the current directory
map <Leader>f <ESC>:FufFile<CR>
" 현재 디렉토리 이하에서 파일명으로 검색해서 읽어오기
map <Leader>F <ESC>:FufFile **/<CR>

" 버퍼 목록에서 검색해서 이동하기
map <Leader>b <ESC>:FufBuffer<CR>

" from author tokorom
let g:fuf_keyOpen = '<Tab>'
let g:fuf_keyOpenTabpage = '<CR>'
" ============================================================================


" ============================================================================
" Global shortcuts:
"
" ----------------------------------------------------------------------------
" Windows related:
" ----------------------------------------------------------------------------
" Move_cursor_by_display_lines_when_wrapping:
"
" http://vim.wikia.com/wiki/Move_cursor_by_display_lines_when_wrapping
noremap <silent> <Leader>T :call ToggleWrap()<CR>
function! ToggleWrap()
  if &wrap
    echo "Wrap OFF"
    setlocal nowrap
    set virtualedit=all
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <Home>
    silent! nunmap <buffer> <End>
    silent! iunmap <buffer> <Up>
    silent! iunmap <buffer> <Down>
    silent! iunmap <buffer> <Home>
    silent! iunmap <buffer> <End>
  else
    echo "Wrap ON"
    setlocal wrap linebreak nolist
    set virtualedit=
    setlocal display+=lastline
    noremap  <buffer> <silent> <Up>   gk
    noremap  <buffer> <silent> <Down> gj
    noremap  <buffer> <silent> <Home> g<Home>
    noremap  <buffer> <silent> <End>  g<End>
    inoremap <buffer> <silent> <Up>   <C-o>gk
    inoremap <buffer> <silent> <Down> <C-o>gj
    inoremap <buffer> <silent> <Home> <C-o>g<Home>
    inoremap <buffer> <silent> <End>  <C-o>g<End>
  endif
endfunction
" ----------------------------------------------------------------------------
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" text tab move Tab ->, S-Tab <-
vmap  <Tab> >gv
vmap  <S-Tab> <gv

" gt and gT to move inside tab
map <C-k> gT
map <F12> :tabnew<CR>

" Adjust each window size using alt key
if bufwinnr(1)
   map <C-n> <C-W><
   map <C-m> <C-W>>
   map <silent> <A-h> <C-W><
   map <silent> <A-l> <C-W>>
   map <silent> <A-j> <C-W>-
   map <silent> <A-k> <C-W>+
endif
" Maps Alt-[s.v] to horizontal and vertical split respectively
map <silent> <A-s> :split<CR>
map <silent> <A-v> :vsplit<CR>
map <silent> <A-q> :q<CR>

" sp and change to source or header file
" map <silent> <A-o> :sp<CR> :A<CR>
"
" change to source or header file
map <silent> <A-o> :A<CR>


" http://vim.wikia.com/wiki/Fast_window_resizing_with_plus/minus_keys
" Window resizing mappings 
" Error message while it works
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" Etc:
" ----------------------------------------------------------------------------
iab xdate <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>
iab xtime <C-R>=strftime("%H:%M:%S")<CR>

map <F8> :!ctags --c++-kinds=+p --fields=+iaS --extra=+q -R .<CR>
nnoremap <silent> <C-F8> :!cscope<CR> :cs kill 0<CR> :cs add cscope.out<CR>
nnoremap <silent> <A-F8> :let &tags = &tags . ',' . expand("%:p:h") . "/tags"<CR>

" set environment dependent variable
" map <F7> :! g++ -g -pg -Wall -pthread -std=gnu++11 -O0 % -o %<.exe<CR>
" map <C-F7> :! gcc -g -pg -Wall % -o %<.exe -Ic:\Users\newpolaris/projects/gtest-1.5.0/include -Ic:/boost_1_43_0/ -Lc:\Users\newpolaris\projects\gtest-1.5.0\lib -lgtest -lstdc++  -std=gnu++11<CR>
map <F7> :!g++-mp-6 -g -pg -Wall -std=c++1z -O0 -D _DEBUG % -o bin/%<<CR>
map <F9> :!g++ -o bin/%< % --std=c++1z -O2 && /usr/bin/time -l bin/%<

"set makeprg=g++\ -o\ bin/%<\ %\ --std=c++1z
set makeprg=g++\ -D\ _DEBUG\ -o\ bin/%<\ %\ -g\ --std=c++1z

map <A-F7> :! gcc -g -pg -Wall % -o %<.exe -Ic:\Users\newpolaris/projects/gtest-1.5.0/include -Ic:/boost_1_43_0/ -Lc:\Users\newpolaris\projects\gtest-1.5.0\lib -lgtest_main -lstdc++  -std=gnu++11<CR>
" ----------------------------------------------------------------------------
" ============================================================================

" ============================================================================
" NERDTree
"
map <Leader>e :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.orig$', '\.asv']
let g:NERDTreeChDirMode=2
" ============================================================================

" ============================================================================
" Specific Language supports
"
" Haskell for vim
let hs_highlight_delimiters = 1
let hs_highlight_boolean = 1
let hs_highlight_types = 1
let hs_highlight_more_types = 1
" ============================================================================

" ============================================================================
" Etc:
" source $VIMRUNTIME/SOME_FILE_INLCUDE.vim

map <Leader>j :set encoding=japan<CR>:e ++enc=shift-jis<CR>:set fileencdoing=utf-8<CR>:wq!

nnoremap \s	:%s:\<<C-r><C-w>\>::gc<Left><Left><Left>
:nnoremap <expr> <F6> ':%s/\<'.expand('<cword>').'\>/<&>/g<CR>'

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
	   set guifont=Menlo\ for\ Powerline
   endif
endif

let g:ConqueTerm_Color = 2         " 1: strip color after 200 lines, 2: always with color
let g:ConqueTerm_CloseOnEnd = 1    " close conque when program ends running
let g:ConqueTerm_StartMessages = 0 " display warning messages if conqueTerm is configured incorrectly

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++14 -stdlib=libc++'
let g:syntastic_python_flake8_exec = 'python3'
let g:syntastic_python_flake8_args = ['-m', 'flake8']

let g:bufExplorerDisableDefaultKeyMapping = 1
let g:bufExplorerDisableDefaultKeyMapping = 1
let g:bufExplorerDisableDefaultKeyMapping = 1

let g:syntastic_mode_map = { "mode": "active",
                           \ "active_filetypes": [],
                           \ "passive_filetypes": ["scala"] }

let g:ycm_show_diagnostics_ui = 0

nmap cp :let @+=expand("%")<CR>
map <Leader>P :let @+=expand("%:p")<CR>
map <Leader>m :make &&\ bin/%<<CR>

" Ggrep arg to cw window
command! -nargs=+ Ggr execute 'silent Ggrep!' <q-args> | cw | redraw!
