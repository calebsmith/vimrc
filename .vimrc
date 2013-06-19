" Show the title, ruler, status, mode and line numbers
set showmode
set laststatus=2
set number
set title
set ruler

" This is what files look like
set encoding=utf8
set ffs=unix,dos,mac

" From whence you came, you shall remain, until you set, the path again
set path=$PWD/**

" Tab sanity
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4

" Alas Master Wq, Master Git's wushu is greater
set autoread

" I don't really need this backup or swapfile stuff thanks to DVC
set nobackup
set nowb
set noswapfile

" Keep lots of history/undo
set history=1000
set undolevels=1000

" Use filetype in lieu of compatible if available
if has("autocmd")
    filetype on
    filetype indent on
    filetype plugin on
    set nocompatible
endif

" Syntax highlighting
syntax enable

" Highlight with darkred after 80 characters are reached
highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

" Make the background dark and the foreground colorful
set bg=dark
set t_Co=256

" Highlight search, show the matches as the search term is typed, and
" highlight matching punctuation
set hlsearch
set incsearch
set mat=2
set showmatch

" Pretend arrow keys don't exist - (No cheating!)
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Put escape on the home row
imap jk <Esc>

" Set up Vundle on first install - Vundle, in turn, installs all other plugins
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    "List bundles here
    Bundle 'gmarik/vundle'
    Bundle 'scrooloose/syntastic'
    Bundle 'pfdevilliers/Pretty-Vim-Python'
    if iCanHazVundle == 0
        echo "Installing Bundles, please ignore key map error messages"
        echo ""
        :BundleInstall
    endif
" end of vundle setup

