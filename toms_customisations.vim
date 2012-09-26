
set nocompatible
set cursorline
set scrolloff=8
set showmatch
set foldlevelstart=99
syntax on

set incsearch
set autoindent
set expandtab "to replace tabs with spaces
set hidden
set ts=2
set sw=2

"set guifont=Anonymous\ 11
"set lsp=1 "line spacing...
set guifont=Monaco:h12

set nobackup
set directory=/tmp "put swap files here instead of the working directory

set autowriteall
""""""""""""""""""""""""""""""
" => Command-T
""""""""""""""""""""""""""""""
let g:CommandTMaxHeight = 15

set wildignore+=vendor/bundle_gems/ruby/1.8/gems/**

" Settings for VimClojure
let vimclojure#HighlightBuiltins=1      " Highlight Clojure's builtins
let vimclojure#ParenRainbow=1           " Rainbow parentheses'!

if has ("gui_running")
    colorscheme molokai
    set guioptions -=T
    set guioptions -=L
    set guioptions -=r
else
     colorscheme default
endif

