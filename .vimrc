set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}

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


" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" Plugins - Vundle Plugin Manager {{{
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    " Github Repos
    Bundle 'gmarik/vundle'
    Bundle 'Townk/vim-autoclose'
    Bundle 'scrooloose/nerdtree'
    Bundle 'scrooloose/syntastic'
    Bundle 'ervandew/supertab'
    Bundle 'Lokaltog/vim-powerline'
    Bundle 'flazz/vim-colorschemes'
    " vim-scripts Repos
    Bundle 'jellybeans.vim'

" Nerdtree
    map <F3> :NERDTreeToggle<CR>
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Supertab
    au FileType python set omnifunc=pythoncomplete#Complete
    let g:SuperTabDefaultCompletionType = "context"
    set completeopt=menuone,longest,preview

" Powerline
    set guifont=Inconsolata-dz\ for\ Powerline
    let g:Powerline_symbols = 'fancy'
" }}}

" General Settings {{{
    syntax on
    filetype on
    filetype plugin indent on 
    set encoding=utf-8
    set nocompatible               " Be improved
    set mouse=a                    " Enable mouse
    set hidden                     " Quick buffer switching
    set ruler                      " Show cursor position
" }}}
    
" Appearance Settings {{{
    set laststatus=2               " Show statusline even when no window split 
    set background=dark
    colorscheme jellybeans
    set gfn=DejaVu\ Sans\ Mono
    set number                     " Line numbers
    set cursorline                 " Highlights cursor line
    set scrolloff=2                " Keep 2 scroll lines above/below cursor
    set fillchars=vert:\           " Remove ugly | in seperators
    highlight OverLength ctermbg=darkgray ctermfg=black
    match OverLength /\%81v.\+/    " Highlight text exceeding 80 character limit
" }}}

" Gvim Settings {{{
    if has('gui_running')
        map <S-Insert> <MiddleMouse>
        map! <S-Insert> <MiddleMouse>
        set guicursor+=a:blinkon0    " Cursor doesn't blink
        set guioptions-=m            " Remove menu bar
        set guioptions-=T            " Remove toolbar
        set guioptions-=r            " Remove right-hand scroll bar
    endif
" }}}
    
" Bell {{{
    set noerrorbells               " Disable annoying beeps
    set visualbell                 " Visual bell instead of beeping
" }}}
 
"" Code Folding {{{
    set foldenable                 " Enable code folding
    set foldmethod=manual          " But do it manually
" }}}
    
" Tab Settings {{{
    set expandtab                  " Tab -> Space
    set tabstop=4                  " Tabs count for 4 columns
    set softtabstop=4              " Tab == 4 spaces
    set shiftwidth=4               " 4 Columns with reindent options
    set backspace=indent,eol,start " Smart backspace 
    set autoindent                 " Ignore case
    set smartindent                " Except with capitals
    set pastetoggle=<F2>           " Disabling autoindent while pasting
" }}}
    
" Searching and History Settings {{{
    set nohlsearch
    set incsearch                  " Increment search
    set ignorecase                 " Case-insensitive search;
    set smartcase                  " Search becomes case sensitive if caps used
    set nobackup                   " Don't keep backups
    set noswapfile                 " Don't create a swap file
    set history=50                 " Keep 50 lines of command line history
" }}}
"
" Other settings {{{
    set shortmess+=I               " No startup message
    set nolazyredraw               " Turn off lazy redraw
    set spelllang=en               " Set default language to English 
" }}}

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

map <C-c> "+y<CR>
map <C-v> "+p<CR>
map <C-x> "+d<CR>
