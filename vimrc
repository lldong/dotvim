set nocompatible " explicitly get out of vi-compatible mode

" =============================================================================
" Vundle (http://github.com/gmarik/vundle.git)
" =============================================================================
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'a.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'AutoComplPop'
Bundle 'brookhong/cscope.vim'
Bundle 'camelcasemotion'
Bundle 'chrisbra/NrrwRgn'
Bundle 'colorv.vim'
Bundle 'derekwyatt/vim-scala'
Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
Bundle 'Match-Bracket-for-Objective-C'
Bundle 'matchit.zip'
Bundle 'mattn/zencoding-vim'
Bundle 'mileszs/ack.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'saghul/vim-colortoggle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/vimshell'
Bundle 'sickill/vim-pasta'
Bundle 'SirVer/ultisnips'
Bundle 'sjl/gundo.vim'
Bundle 'sjl/threesome.vim'
Bundle 'sjl/vitality.vim'
Bundle 'slimv.vim'
Bundle 'sophacles/vim-bundle-sparkup'
Bundle 'spolu/dwm.vim'
Bundle 'SrcExpl'
Bundle 'taglist.vim'
Bundle 'toggle_words.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-rhubarb'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-ruby/vim-ruby'
Bundle 'VimClojure'
Bundle 'xolox/vim-easytags'
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
colorscheme solarized
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
set listchars=tab:>-,trail:.,eol:$

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

" emacs-like navigation in insert mode
inoremap <C-a> <home>
inoremap <C-e> <end>
inoremap <C-f> <right>
inoremap <C-b> <left>

" emacs-like navigation in command mode
cnoremap <C-a> <home>
cnoremap <C-e> <end>
cnoremap <C-f> <right>
cnoremap <C-b> <left>

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

nnoremap <silent> <leader>l :set list!<cr>

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

autocmd FileType ruby setlocal sts=2 ts=2 sw=2 expandtab

"==============================================================================
" Plugin settings
"==============================================================================
" DWM
let g:dwm_map_keys=0
nnoremap <c-n> :call DWM_New()<cr>
nnoremap <c-c> :call DWM_Close()<cr>
nnoremap <c-f> :call DWM_Focus()<cr>
nnoremap <c-m> :call DWM_Full()<cr>

" Syntastic
let g:syntastic_ruby_checker='macruby'

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
noremap <silent> <F4> :TlistToggle<cr>

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

" ZoomWin
noremap <silent><leader>zw :ZoomWin<cr>

" ToggleWords
noremap <silent><leader>tw :ToggleWord<cr>

" NERDTree
noremap <silent><F2> :NERDTreeToggle<cr>
autocmd FileType nerdtree setlocal norelativenumber

" AutoComplPop
let g:acp_completeOption = '.,w,b,k,t'

" vim-colortoggle
noremap <silent><F6> :ToggleBg<cr>
let g:default_background_type="light"

" gui settings
if has("gui_running")
    set fuoptions=maxvert,maxhorz       " full screen means FULL screen
    set guioptions=                     " get rid of all gui elements
    set mousehide                       " hide the mouse cursor when typing
    set guifont=Inconsolata:h14
    set columns=90
    set colorcolumn=80
    set lines=50
    set macmeta
endif

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

