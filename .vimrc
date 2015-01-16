set nocompatible
filetype off

if has('win32') || has('win64')
  set rtp+=~/vimfiles/bundle/Vundle.vim
  let path='~/vimfiles/bundle'
else
  set rtp+=~/.vim/bundle/Vundle.vim
  let path='~/.vim/bundle'
endif

call vundle#begin(path)

Plugin 'gmarik/Vundle.vim'

" git support, status bar
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'

" common sense vim seetings (backspace key etc ..)
Plugin 'tpope/vim-sensible'
" Makes . repeat last map not only last command
Plugin 'tpope/vim-repeat'

" file panel
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" file search/lookup
Plugin 'kien/ctrlp.vim'

" better markdown support
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" autosave on buffer changes
Plugin '907th/vim-auto-save'

" autowrap as you type plugin
Plugin 'reedes/vim-pencil'

" name says it all
Plugin 'Glench/Vim-Jinja2-Syntax'

Plugin 'DAddYE/soda.vim'
Plugin 'AlxHnr/clear_colors'
Plugin 'freeo/vim-kalisi'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/navajo-night'
Plugin 'vim-scripts/navajo.vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'john2x/flatui.vim'
Plugin 'zefei/cake16'


Plugin 'vim-scripts/zoom.vim'

Plugin 'gregsexton/gitv'

Plugin 'wting/rust.vim'
Plugin 'phildawes/racer'

call vundle#end()

filetype plugin indent on
syntax on

set spell
set tabstop=2 shiftwidth=2 expandtab
"set textwidth=79
set formatoptions+=t

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" autocompletion
set wildmode=longest,full
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

" rust complete integration
set hidden
let g:racer_cmd = "/usr/local/bin/racer"
let $RUST_SRC_PATH="/usr/local/src/rust/src"

" nerdtree staff
let g:NERDTreeDirArrows=0
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_open_on_console_startup = 0
set autochdir
let NERDTreeChDirMode=2
autocmd vimenter * if !argc() | NERDTree . | NERDTreeClose | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>

" colorscheme

" _gvimrc stuff
if has("gui_running")
  set guifont=Liberation\ Mono:h10
  colorscheme seoul256
  set background=light
  let g:airline_theme='kalisi'
else
  colorscheme solarized
  set background=dark
  let g:airline_theme='solarized'
endif

" disable markdown auto folding
let g:vim_markdown_folding_disabled=1

" display line numbers
set number

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

