if !has('gui_running')
  set t_Co=256
endif

"TOGGLE LINE NUMBERS
set number

"TOGGLE SYNTAX HIGHLIGHT
syntax on

"PATHOGEN
execute pathogen#infect()

"TABS!
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"OPEN + CLOSE BRACES AND PARENTHESIS

" Vundle vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
let g:ycm_confirm_extra_conf = 0

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'wookiehangover/jshint.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'ternjs/tern_for_vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
"Plugin 'itchyny/lightline.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pelodelfuego/vim-swoop'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'nathanaelkane/vim-indent-guides'
" End configuration, makes the plugins available
filetype indent on

"SEARCH HIGHLIGHT
set hlsearch

"INC SEARCH
set incsearch

set autoread


"SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"STATUSBAR
set laststatus=2
let g:airline#extensions#branch#enabled = 1

"THEME
let g:airline_theme='base16_atelierlakeside'


"GIT GUTTER THING
set updatetime=750

"TERN
let g:tern_show_argument_hints='on_hold'

let g:tern_map_keys=1

"LINT
let g:syntastic_javascript_checkers = ['jshint']



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Use spaces instead of tabs
 set expandtab
"
"" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
 set shiftwidth=2
 set tabstop=2
"
" " Linebreak on 500 characters
 set lbr
 set tw=500
"
set ai
set si
set wrap


 map <space> /
 map <c-space> ?

 " " Disable highlight when <leader><cr> is pressed
 map <silent> <leader><cr> :noh<cr>


 " Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" Set no max file limit
let g:ctrlp_max_files = 0
" Search from current directory instead of project root
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


" TABLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


" FONTS
let g:airline_powerline_fonts = 1

" INDENT GUIDE
colorscheme default
let g:indent_guides_enable_on_vim_startup = 1 
"let g:indent_guides_auto_colors = 0 
let g:indent_guides_guide_size = 1 
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=darkgrey ctermbg=252
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=250

