set nocompatible        " explicitly get out of vi-compatible mode

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

set directory=~/.vim-tmp,/var/tmp,/tmp

set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]

set foldenable          " turn on folding
set foldmethod=marker   " fold on the marker
set foldlevel=100
set foldopen=block,hor,mark,percent,quickfix,tag

filetype plugin indent on      
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

" navigate split windows more easier
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" remap <leader> to ','
let mapleader="," 

nmap <silent> <leader>s :set nolist!<cr>
nmap <silent> <leader>nt :NERDTreeToggle<cr>

" use normal regex when search 
nnoremap / /\v
nnoremap ? ?\v

" open/source my vimrc file more quickly
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" gui settings
if has("gui_running")
    colorscheme solarized
    set cursorline          " highlight current row
    set background=light    " use dark background by default
    set guioptions=         " get rid of all gui elements
    set autochdir           " always switch to the current file directory
    set mousehide           " hide the mouse cursor when typing
    set guifont=Monaco:h12
    set columns=90
    set lines=40
endif

" vundle installation:
"
" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" :BundleInstall
filetype off
set 	rtp+=~/.vim/bundle/vundle/
call 	vundle#rc()

Bundle 	'gmarik/vundle'
Bundle  'sophacles/vim-bundle-sparkup'
Bundle  'altercation/vim-colors-solarized'
Bundle  'The-NERD-tree'
Bundle  'The-NERD-Commenter'
Bundle  'taglist.vim'
Bundle  'snipMate'
Bundle  'surround.vim'
Bundle  'matchit.zip'
Bundle  'Match-Bracket-for-Objective-C'
Bundle  'minibufexpl.vim'
Bundle  'ragtag.vim'
Bundle  'Markdown'
Bundle  'SnipMgr'
Bundle  'EasyMotion'

filetype plugin indent on

" snipMgr settings
let g:snipmgr_snippets_dir = $HOME."/.vim/snippets"
" taglist settings
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
