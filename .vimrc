set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

  Plug 'gmarik/Vundle.vim'

  " git support, status bar
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'

  " airline below
  Plug 'bling/vim-airline'

  " common sense vim seetings (backspace key etc ..)
  Plug 'tpope/vim-sensible'
  " Makes . repeat last map not only last command
  Plug 'tpope/vim-repeat'

  " file panel
  Plug 'scrooloose/nerdtree'
  Plug 'jistr/vim-nerdtree-tabs'
  " file search/lookup
  Plug 'kien/ctrlp.vim'
  " autosave on buffer changes
  Plug '907th/vim-auto-save'
  " autowrap as you type plugin
  Plug 'reedes/vim-pencil'
  " zooms on + / -
  Plug 'vim-scripts/zoom.vim'
  " cursor enchancement
  Plug 'jszakmeister/vim-togglecursor'
  " rust auto complete support
  Plug 'phildawes/racer'
  " editorconfig support (google it)
  Plug 'editorconfig/editorconfig-vim'

  Plug 'scrooloose/syntastic'

  " better markdown support
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  " Rust syntax
  Plug 'wting/rust.vim'
  " name says it all
  Plug 'Glench/Vim-Jinja2-Syntax'

  "Plug 'DAddYE/soda.vim'
  "Plug 'AlxHnr/clear_colors'
  Plug 'freeo/vim-kalisi'
  "Plug 'altercation/vim-colors-solarized'
  "Plug 'vim-scripts/navajo-night'
  "Plug 'vim-scripts/navajo.vim'
  "Plug 'junegunn/seoul256.vim'
  "Plug 'john2x/flatui.vim'
  Plug 'zefei/cake16'

call plug#end()

filetype plugin indent on
syntax on

set spell
set tabstop=2 shiftwidth=2 expandtab
"set textwidth=80
set colorcolumn=81
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
  colorscheme cake16
  set background=light
  let g:airline_theme='solarized'
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  "set guioptions-=r  "remove right-hand scroll bar
  "set guioptions-=L  "remove left-hand scroll bar
else
  colorscheme cake16
  set background=light
  let g:airline_theme='base16'
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

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 2
let g:auto_save_postsave_hook="SyntasticCheck"
