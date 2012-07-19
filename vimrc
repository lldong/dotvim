set nocompatible " explicitly get out of vi-compatible mode

" vundle installation:
" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" :BundleInstall
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'a.vim'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'jiangmiao/auto-pairs'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Match-Bracket-for-Objective-C'
Bundle 'matchit.zip'
Bundle 'mileszs/ack.vim'
Bundle 'myusuf3/numbers.vim'
Bundle 'saghul/vim-colortoggle'
Bundle 'scrooloose/nerdtree'
Bundle 'sickill/vim-pasta'
Bundle 'SirVer/ultisnips'
Bundle 'sjl/gundo.vim'
Bundle 'sjl/vitality.vim'
Bundle 'slimv.vim'
Bundle 'sophacles/vim-bundle-sparkup'
Bundle 'taglist.vim'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-commentary'
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
filetype plugin indent on

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
set foldmethod=marker   " fold on the marker
set foldlevel=100
set foldopen=block,hor,mark,percent,quickfix,tag
set directory=~/.vim-tmp,/var/tmp,/tmp
set complete=.,b,u,]    " completions search order

syntax on               " turn on syntax highlighting
colorscheme desert      " default colorscheme
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

" enter full-screen mode
noremap  <F1> :set invfullscreen<cr>
inoremap <F1> <ESC>:set invfullscreen<cr>a

" emacs-like navigation in insert mode
inoremap <C-f> <right>
inoremap <C-b> <left>

" easy buffer switching
noremap <up> <ESC>:bp<cr>
noremap <down> <ESC>:bn<cr>

" navigate split windows more easier
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

nmap <silent> <leader>l :set list!<cr>
nmap <silent> <leader>a :A<cr>

" use normal regex when search 
nnoremap / /\v
nnoremap ? ?\v

" make 'Y' yank from the cursor to the end of line
nnoremap Y y$

" open/source my vimrc file more quickly
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" search with Ack
nnoremap <leader>a :Ack 

" toggle paste mode
nnoremap <leader>p :set paste!<cr>

" preview in Marked
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

autocmd FileType ruby setlocal sts=2 ts=2 sw=2 expandtab

" Taglist
let Tlist_Display_Prototype=1
let Tlist_Display_Tag_Scope=0
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=40
autocmd FileType taglist setlocal norelativenumber
noremap <silent> <F4> :TlistToggle<cr>

" UltiSnips
let g:UltiSnipsEditSplit="vertical"

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

" Numbers
noremap <F3> :NumbersToggle<CR>

" NERDTree
noremap <silent> <F2> :NERDTreeToggle<cr>

" vim-colortoggle
noremap <silent><F6> :ToggleBg<CR>

" gui settings
if has("gui_running")
    colorscheme solarized
    set fuoptions=maxvert,maxhorz  " full screen means FULL screen
    set cursorline                 " highlight current row
    set background=dark            " use dark background by default
    set guioptions=                " get rid of all gui elements
    set mousehide                  " hide the mouse cursor when typing
    set guifont=Monaco:h12
    set columns=80
    set lines=60
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
