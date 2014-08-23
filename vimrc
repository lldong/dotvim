" =============================================================================
" NeoBundle (git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim)
" =============================================================================
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle (required)
NeoBundleFetch 'Shougo/neobundle.vim'

" NeoBundle 'bling/vim-airline'
NeoBundle 'a.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'AndrewRadev/splitjoin.vim'
NeoBundle 'brookhong/cscope.vim'
NeoBundle 'camelcasemotion'
NeoBundle 'chrisbra/NrrwRgn'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'colorv.vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'dgrnbrg/vim-redl'
NeoBundle 'dhruvasagar/vim-table-mode'
NeoBundle 'enomsg/vim-haskellConcealPlus'
NeoBundle 'gabebw/vim-spec-runner'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'gmarik/sudo-gui.vim'
NeoBundle 'gmarik/vundle'
NeoBundle 'godlygeek/tabular'
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'honza/vim-snippets'
NeoBundle 'itspriddle/vim-marked'
NeoBundle 'jeetsukumaran/vim-buffergator'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'Match-Bracket-for-Objective-C'
NeoBundle 'matchit.zip'
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'ngmy/vim-rubocop'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'rking/ag.vim'
NeoBundle 'rking/vim-ruby-refactoring'
NeoBundle 'rodjek/vim-puppet'
NeoBundle 'rorymckinley/vim-rubyhash'
NeoBundle 'saghul/vim-colortoggle'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/vimproc', {'build' : {'mac' : 'make -f make_mac.mak', 'unix' : 'make -f make_unix.mak'}}
NeoBundle 'Shougo/vimshell'
NeoBundle 'sickill/vim-pasta'
NeoBundle 'sjbach/lusty'
NeoBundle 'sjl/badwolf'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'sjl/threesome.vim'
NeoBundle 'sjl/vitality.vim'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'slimv.vim'
NeoBundle 'sophacles/vim-bundle-sparkup'
NeoBundle 'SrcExpl'
NeoBundle 'sudo.vim'
NeoBundle 't9md/vim-ruby-xmpfilter'
NeoBundle 'taglist.vim'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'toggle_words.vim'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'tpope/rbenv-sentience'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-afterimage'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-characterize'
NeoBundle 'tpope/vim-classpath'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-cucumber'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-obsession'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-rake'
NeoBundle 'tpope/vim-rbenv'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-rhubarb'
NeoBundle 'tpope/vim-rsi'
NeoBundle 'tpope/vim-rvm'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-tbone'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'Valloric/MatchTagAlways'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'wikitopian/hardmode'
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

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
set re=1                " use the old regex engine to speed up ruby syntax highlighting

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

" yank to OS X clipboard
vmap <C-c> :w !pbcopy<CR><CR> 

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

nnoremap <silent><leader>l :set list!<cr>

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

" toggle paste mode
nnoremap <leader>p :set paste!<cr>

" preview in Marked
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

" ruby refactoring
nnoremap <Leader>: :%s/:\([^ ]*\)\(\s*\)=>/\1:/gc<CR>
nnoremap <Leader>{ :%s/{\([^ ]\)/{ \1/gc<CR>
nnoremap <Leader>} :%s/\([^ ]\)}/\1 }/gc<CR>

" Filetypes
autocmd FileType ruby setlocal sts=2 ts=2 sw=2 expandtab
autocmd FileType erb setlocal sts=2 ts=2 sw=2 expandtab
autocmd FileType coffee setlocal sts=2 ts=2 sw=2 expandtab

" gui settings
if has("gui_running")
    colorscheme hemisu
    set fuoptions=maxvert,maxhorz       " full screen means FULL screen
    set guioptions=                     " get rid of all gui elements
    set mousehide                       " hide the mouse cursor when typing
    set guifont=InputMonoCondensed:h14
    set columns=90
    set colorcolumn=80
    set lines=50
    set macmeta
    set clipboard=unnamed
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
autocmd FileType c,cpp,objc,java,javascript,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" git commit message
autocmd Filetype gitcommit setlocal spell textwidth=72

"==============================================================================
" Plugin settings
"==============================================================================

" Tabular
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" ControlP
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.a$\|\.so$\|\.o$',
  \ }

" Ack
nmap <leader>a :Ack 

" Taglist
let Tlist_Show_One_File=1
let Tlist_Display_Prototype=1
let Tlist_Display_Tag_Scope=0
let Tlist_Enable_Fold_Column=0
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=40
noremap <silent> <F3> :TlistToggle<cr>

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

" Capslock 
" nmap <Leader>i i<Plug>CapsLockToggle
imap <C-L> <C-O><Plug>CapsLockToggle

" vim-colortoggle
noremap <silent><F6> :ToggleBg<cr>
let g:default_background_type="light"

" tagbar
let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'JavaScript',
    \ 'kinds'     : [
        \ 'o:objects',
        \ 'f:functions',
        \ 'a:arrays',
        \ 's:strings'
    \ ]
\ }

" Syntastic
let g:syntastic_ruby_checkers = ['mri', 'rubocop']

" vimfiler
:let g:vimfiler_as_default_explorer = 1

" vim-ruby-xmpfilter
let g:xmpfilter_cmd = "seeing_is_believing"

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


" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#enable_auto_select = 1
inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
endfunction
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'

" Enable omni completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

" neosnippet
let g:neosnippet#enable_snipmate_compatibility = 1
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: "\<TAB>"

" embrace the hard mode
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" toggle relative number 
function! NumberToggle()
  set rnu!
endfunc
nnoremap <leader>rn :call NumberToggle()<cr>

