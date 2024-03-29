" =============================================================================
" VIM-PLUG (curl -fLo ~/.vim/autoload/plug.vim \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)
" =============================================================================

call plug#begin('~/.vim/plugged')

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat' " enable repeating supported plugin maps with
Plug 'tpope/vim-abolish' " easily search for, substitute, and abbreviate multiple variants of a word
Plug 'tpope/vim-ragtag' " ghetto HTML/XML mappings
Plug 'tpope/vim-unimpaired' " pairs of handy bracket mappings
Plug 'tpope/vim-surround' " quoting/parenthesizing made simple
Plug 'tpope/vim-vinegar' " combine with netrw to create a delicious salad dressing
Plug 'tpope/vim-rsi' " Readline style insertion
Plug 'tpope/vim-eunuch' " helpers for UNIX 
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-flagship'
Plug 'airblade/vim-gitgutter'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'wikitopian/hardmode'
Plug 'mattn/emmet-vim'
Plug 't9md/vim-ruby-xmpfilter'
Plug 'jiangmiao/auto-pairs' " The missing motion for Vim
Plug 'godlygeek/tabular' " Vim script for text filtering and alignment
Plug 'dhruvasagar/vim-table-mode' " VIM Table Mode for instant table creation.
Plug 'easymotion/vim-easymotion' " Vim motions on speed!
Plug 'andymass/vim-matchup' " even better % navigate and highlight matching words
Plug 'altercation/vim-colors-solarized'
Plug 'ahw/vim-pbcopy'
Plug 'atelierbram/Base2Tone-vim'
Plug 'wincent/terminus'
Plug 'sheerun/vim-polyglot'
Plug 'ervandew/supertab'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" https://github.com/camspiers/lens.vim
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'psliwka/vim-smoothie'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'AndrewRadev/sideways.vim'

call plug#end()

" ==============================================================================
"  Global settings
" ==============================================================================

set nocompatible        " We're running Vim, not Vi!
syntax on               " turn on syntax highlighting
filetype on             " Enable filetype detection
filetype indent on      " Enable filetype-specific indenting
filetype plugin on      " Enable filetype-specific plugins

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
set re=1                " use the old regex engine to speed up ruby syntax highlighting

set background=dark     " use dark background by default
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
set backspace=indent,eol,start " allow backspacing over autoindent, linebreaks and start of insert
set showtabline=2

" colorscheme
colorscheme Base2Tone_EveningDark

" gui settings
if has("gui_running")
    set fuoptions=maxvert,maxhorz       " full screen means FULL screen
    set guioptions=                     " get rid of all gui elements
    set mousehide                       " hide the mouse cursor when typing
    set guifont=Iosevka-Light:h16
    set columns=90
    set colorcolumn=80
    set lines=50
    set macmeta
    set clipboard=unnamed
    set background=dark
endif

" remap <leader> to ','
let mapleader="," 

" enter full-screen mode
noremap  <F1> :set invfullscreen<cr>
inoremap <F1> <esc>:set invfullscreen<cr>a

" save when losing focus
au FocusLost * :silent! wall

" embrace the hard mode
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

" resize splits when the window is resized
au VimResized * :wincmd =
 
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

nnoremap <silent><leader>l :set list!<cr>

" use normal regex when search 
nnoremap / /\v
nnoremap ? ?\v

" make 'Y' yank from the cursor to the end of line
nnoremap Y y$

" Yank
nnoremap <leader>yp :let @+=expand("%:p")<CR>
nnoremap <leader>yl :let @+=expand('%:t') . ':' . line(".")<CR>
nnoremap <leader>yc :let @+=expand('%:t') . ':' . line( "."). ':' . col(".")<CR>

" open/source my vimrc file more quickly
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
 
" toggle paste mode
nnoremap <leader>p :set paste!<cr>

" preview in Marked
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

" toggle relative number 
function! NumberToggle()
  set rnu!
endfunc
nnoremap <leader>rn :call NumberToggle()<cr>

" Filetypes
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType eruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

"==============================================================================
" Plugin settings
"==============================================================================

" vim-ruby-xmpfilter
let g:xmpfilter_cmd = "bundle exec seeing_is_believing"

autocmd FileType ruby nmap <buffer> <leader>mm <Plug>(seeing_is_believing-mark)
autocmd FileType ruby xmap <buffer> <leader>mm <Plug>(seeing_is_believing-mark)
autocmd FileType ruby imap <buffer> <leader>mm <Plug>(seeing_is_believing-mark)

autocmd FileType ruby nmap <buffer> <leader>cc <Plug>(seeing_is_believing-clean)
autocmd FileType ruby xmap <buffer> <leader>cc <Plug>(seeing_is_believing-clean)
autocmd FileType ruby imap <buffer> <leader>cc <Plug>(seeing_is_believing-clean)

autocmd FileType ruby nmap <buffer> <leader>rr <Plug>(seeing_is_believing-run)
autocmd FileType ruby xmap <buffer> <leader>rr <Plug>(seeing_is_believing-run)
autocmd FileType ruby imap <buffer> <leader>rr <Plug>(seeing_is_believing-run)

autocmd FileType ruby nmap <buffer> <leader>xr <Plug>(seeing_is_believing-run_-x)
autocmd FileType ruby xmap <buffer> <leader>xr <Plug>(seeing_is_believing-run_-x)
autocmd FileType ruby imap <buffer> <leader>xr <Plug>(seeing_is_believing-run_-x)

" Netrw
let g:netrw_liststyle=3
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" GitGutter
let g:gitgutter_enabled=0
let g:gitgutter_diff_args='-w'
nmap <leader>g :GitGutterToggle<CR>

" FZF
nnoremap <C-p> :Files<Cr>
nnoremap <leader>r :Rg<Cr>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

