set nocompatible " explicitly get out of vi-compatible mode

" =============================================================================
" Vundle (http://github.com/gmarik/vundle.git)
" =============================================================================
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundle 'skwp/vim-rspec'
Bundle 'a.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'brookhong/cscope.vim'
Bundle 'camelcasemotion'
Bundle 'chrisbra/NrrwRgn'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'colorv.vim'
Bundle 'derekwyatt/vim-scala'
Bundle 'dgrnbrg/vim-redl'
Bundle 'dhruvasagar/vim-table-mode'
Bundle 'epmatsw/ag.vim'
Bundle 'garbas/vim-snipmate'
Bundle 'gmarik/sudo-gui.vim'
Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'guns/vim-clojure-static'
Bundle 'honza/vim-snippets'
Bundle 'itspriddle/vim-marked'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'Match-Bracket-for-Objective-C'
Bundle 'matchit.zip'
Bundle 'mattn/zencoding-vim'
Bundle 'mileszs/ack.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'ngmy/vim-rubocop'
Bundle 'Raimondi/delimitMate'
Bundle 'rking/vim-ruby-refactoring'
Bundle 'rodjek/vim-puppet'
Bundle 'rorymckinley/vim-rubyhash'
Bundle 'saghul/vim-colortoggle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/vimshell'
Bundle 'sickill/vim-pasta'
Bundle 'sjl/badwolf'
Bundle 'sjl/gundo.vim'
Bundle 'sjl/threesome.vim'
Bundle 'sjl/vitality.vim'
Bundle 'slim-template/vim-slim'
Bundle 'slimv.vim'
Bundle 'sophacles/vim-bundle-sparkup'
Bundle 'SrcExpl'
Bundle 'sudo.vim'
Bundle 'taglist.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'thoughtbot/vim-rspec'
Bundle 'toggle_words.vim'
Bundle 'tomtom/tlib_vim'
Bundle 'tpope/rbenv-sentience'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-afterimage'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-capslock'
Bundle 'tpope/vim-characterize'
Bundle 'tpope/vim-classpath'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-obsession'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-rbenv'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-rhubarb'
Bundle 'tpope/vim-rsi'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-sleuth'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-tbone'
Bundle 'tpope/vim-unimpaired'
Bundle 'Valloric/MatchTagAlways'
Bundle 'vim-ruby/vim-ruby'
Bundle 'VimClojure'
Bundle 'ZoomWin'
filetype plugin indent on

"==============================================================================
" Global settings
"==============================================================================
set encoding=utf-8
set fileencoding=utf-8
set hidden              " change buffers without saving
set history=1000        " remember last 1000 commands
set nobackup            " don't backup file
set nowritebackup       " don't backup before overwriting a file
set visualbell t_bv=    " disable visual bell and beep
set lazyredraw          " do not redraw while macros
set modeline            " enable modeline
set wildmenu            " enable enhanced command-line completion
set wrapscan            " set the search scan to wrap line
set ignorecase          " case insensitive by default
set incsearch           " use increment search
set smartcase           " if there are Caps, go case sensitive
set timeoutlen=500      " set timeout to 500 milliseconds 
set foldenable          " turn on folding
set foldmethod=indent
set foldlevel=100
set foldopen=block,hor,mark,percent,quickfix,tag
set directory=~/.vim-tmp,/var/tmp,/tmp
set complete=.,b,u,]    " completions search order

syntax on               " turn on syntax highlighting
set background=light    " use light background by default
set laststatus=2        " always show the status line
set showmode            " show what mode you are in
set nohlsearch          " do not highlight for searched phrases
set number              " show line number
set numberwidth=4       " minimal number of columns to use for the line number
set ruler               " show the line and column number of the cursor position
set showcmd             " show the command being typed
set showmatch           " show matching brackets
set splitbelow          " put new window below the current one
set splitright          " put new window right of the current one
set expandtab           " replace tab with spaces
set autoindent
set smartindent
set tabstop=8
set softtabstop=4
set shiftwidth=4
set wrap
set fo+=o
set fo-=r
set nolist
set listchars=tab:▸\ ,trail:▝,eol:¬,extends:>,nbsp:_,precedes:<

" allow backspacing over autoindent, linebreaks and start of insert
set backspace=indent,eol,start

" save when losing focus
au FocusLost * :silent! wall

" resize splits when the window is resized
au VimResized * :wincmd =

" open vim help in vertical window by default
" cab h vert h

" enter full-screen mode
noremap  <F1> :set invfullscreen<cr>
inoremap <F1> <esc>:set invfullscreen<cr>a

" handling windows more easier
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap j gj
noremap k gk
noremap gj j
noremap gk k

" keep search pattern at the center of the screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz

" jump to start and end of line using home row keys
nnoremap H ^
nnoremap L $

" remap <leader> to ','
let mapleader="," 

nnoremap <silent>leader>l :set list!<cr>

nnoremap <leader><leader> <c-^>

" completion mapping
inoremap ^] ^X^]
inoremap ^F ^X^F
inoremap ^D ^X^D
inoremap ^L ^X^L

" use normal regex when search 
nnoremap / /\v
nnoremap ? ?\v

" make 'Y' yank from the cursor to the end of line
nnoremap Y y$

" open/source my vimrc file more quickly
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" open word under cursor in Dash
nmap <leader>di :silent !open dash://iphoneos:<cword><cr>
nmap <leader>dr :silent !open dash://ruby:<cword><cr>

" toggle paste mode
nnoremap <leader>p :set paste!<cr>

" preview in Marked
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

" Filetypes
autocmd FileType ruby setlocal sts=2 ts=2 sw=2 expandtab
autocmd FileType erb setlocal sts=2 ts=2 sw=2 expandtab
autocmd FileType coffee setlocal sts=2 ts=2 sw=2 expandtab

"==============================================================================
" Plugin settings
"==============================================================================

" Syntastic
let g:syntastic_ruby_checkers=['mri']

" ControlP
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.a$\|\.so$\|\.o$',
  \ }

" Ack
nnoremap <leader>a :Ack 

" Taglist
let Tlist_Show_One_File=1
let Tlist_Display_Prototype=1
let Tlist_Display_Tag_Scope=0
let Tlist_Enable_Fold_Column=0
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=40
noremap <silent> <F3> :TlistToggle<cr>

" UltiSnips
let g:UltiSnipsEditSplit='vertical'

" RainbowParentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Paredit
au  FileType lisp call PareditInitBuffer()
au  FileType cl   call PareditInitBuffer()
au  FileType clj  call PareditInitBuffer()
au  FileType cljs call PareditInitBuffer()
au  FileType scm  call PareditInitBuffer()
au  FileType rkt  call PareditInitBuffer()

" Tabular
if exists(":Tabularize")
  nmap <leader>a= :Tabularize /=<CR>
  vmap <leader>a= :Tabularize /=<CR>
  nmap <leader>a: :Tabularize /:\zs<CR>
  vmap <leader>a: :Tabularize /:\zs<CR>
endif

" ZoomWin
noremap <silent><leader>zw :ZoomWin<cr>

" ToggleWords
noremap <silent><leader>tw :ToggleWord<cr>

" NERDTree
noremap <silent><F2> :NERDTreeToggle<cr>
autocmd FileType nerdtree setlocal norelativenumber

" Capslock nmap <Leader>i i<Plug>CapsLockToggle
imap <C-L> <C-O><Plug>CapsLockToggle

" AutoComplPop
let g:acp_completeOption = '.,w,b,k,t'

" vim-colortoggle
noremap <silent><F6> :ToggleBg<cr>
let g:default_background_type="light"

" gui settings
if has("gui_running")
    colorscheme hemisu
    set fuoptions=maxvert,maxhorz       " full screen means FULL screen
    set guioptions=                     " get rid of all gui elements
    set mousehide                       " hide the mouse cursor when typing
    set guifont=Hermit:h13
    set columns=90
    set colorcolumn=80
    set lines=50
    set macmeta
    set clipboard=unnamed
    set background=dark
endif

" tabbar
let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'JavaScript',
    \ 'kinds'     : [
        \ 'o:objects',
        \ 'f:functions',
        \ 'a:arrays',
        \ 's:strings'
    \ ]
\ }

" remove trailing whitespace
function! <SID>StripTrailingWhitespaces()
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
autocmd FileType c,cpp,objc,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" git commit message
autocmd Filetype gitcommit setlocal spell textwidth=72

