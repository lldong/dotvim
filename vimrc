" =============================================================================
" VIM-PLUG (curl -fLo ~/.vim/autoload/plug.vim \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)
" =============================================================================

call plug#begin('~/.vim/plugged')

" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
Plug 'a.vim'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'bling/vim-airline'
Plug 'brookhong/cscope.vim'
Plug 'camelcasemotion'
Plug 'chrisbra/NrrwRgn'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'christoomey/vim-tmux-navigator'
Plug 'colorv.vim'
Plug 'dag/vim2hs'
Plug 'derekwyatt/vim-scala'
Plug 'dgrnbrg/vim-redl'
Plug 'dhruvasagar/vim-table-mode'
Plug 'eagletmt/ghcmod-vim'
Plug 'eagletmt/neco-ghc'
Plug 'garbas/vim-snipmate'
Plug 'gmarik/sudo-gui.vim'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'honza/vim-snippets'
Plug 'itspriddle/vim-marked'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'jpalardy/vim-slime'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'majutsushi/tagbar'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'Match-Bracket-for-Objective-C'
Plug 'matchit.zip'
Plug 'mileszs/ack.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ngmy/vim-rubocop'
Plug 'paredit.vim'
Plug 'Raimondi/delimitMate'
Plug 'rking/ag.vim'
Plug 'rking/vim-ruby-refactoring'
Plug 'rodjek/vim-puppet'
Plug 'rorymckinley/vim-rubyhash'
Plug 'saghul/vim-colortoggle'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/vimshell'
Plug 'sickill/vim-pasta'
Plug 'SirVer/ultisnips'
Plug 'sjbach/lusty'
Plug 'sjl/badwolf'
Plug 'sjl/gundo.vim'
Plug 'sjl/threesome.vim'
Plug 'sjl/vitality.vim'
Plug 'sophacles/vim-bundle-sparkup'
Plug 'SrcExpl'
Plug 't9md/vim-ruby-xmpfilter'
Plug 'taglist.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'thoughtbot/vim-rspec'
Plug 'toggle_words.vim'
Plug 'tomtom/tlib_vim'
Plug 'tpope/rbenv-sentience'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-afterimage'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-leiningen'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-rvm'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-unimpaired'
Plug 'Valloric/MatchTagAlways'
Plug 'vim-ruby/vim-ruby'
Plug 'wikitopian/hardmode'
call plug#end()

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

colorscheme tomorrow_night_eighties

" gui settings
if has("gui_running")
    set fuoptions=maxvert,maxhorz       " full screen means FULL screen
    set guioptions=                     " get rid of all gui elements
    set mousehide                       " hide the mouse cursor when typing
    set guifont=Source\ Code\ Pro:h13
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
nmap <leader>a :Ag 

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

" Paredit
au FileType lisp call PareditInitBuffer()
au FileType cl   call PareditInitBuffer()
au FileType clj  call PareditInitBuffer()
au FileType cljs call PareditInitBuffer()
au FileType scm  call PareditInitBuffer()
au FileType rkt  call PareditInitBuffer()"

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
let g:neocomplete#enable_omni_fallback = 1

inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()

inoremap <silent> <CR> <C-r>=<SID>neo_cr_function()<CR>
function! s:neo_cr_function()
  return neocomplete#close_popup() . "\<CR>"
endfunction

inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplete#close_popup()
inoremap <expr><C-e> neocomplete#cancel_popup()

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'

" Enable omni completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

" neosnippet
" let g:neosnippet#enable_snipmate_compatibility = 1

" " For snippet_complete marker.
" if has('conceal')
"   set conceallevel=2 concealcursor=i
" endif

" imap <C-k> <Plug>(neosnippet_expand_or_jump)
" smap <C-k> <Plug>(neosnippet_expand_or_jump)
" xmap <C-k> <Plug>(neosnippet_expand_target)

" imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"       \ "\<Plug>(neosnippet_expand_or_jump)"
"       \: pumvisible() ? "\<C-n>" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"       \ "\<Plug>(neosnippet_expand_or_jump)"
"       \: "\<TAB>"

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"

" embrace the hard mode
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

" neco-ghc
let g:necoghc_enable_detailed_browse = 1 

" vim2hs
let g:haskell_conceal_wide = 1

" git-gutter
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" vim-airline
let g:airline_left_sep=' '
let g:airline_right_sep=' '
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '

" toggle relative number 
function! NumberToggle()
  set rnu!
endfunc
nnoremap <leader>rn :call NumberToggle()<cr>

" slime-vim
let g:slime_target = "tmux"
