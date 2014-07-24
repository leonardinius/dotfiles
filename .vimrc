set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
let path='~/.vim/bundle'
call vundle#begin(path)

Plugin 'gmarik/Vundle.vim'

" git support, status bar
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'

" common sense vim seetings (backspace key etc ..)
Plugin 'tpope/vim-sensible'

" transparency support on windows
Plugin 'mattn/transparency-windows-vim'

" file panel
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" file search/lookup
Plugin 'kien/ctrlp.vim'

" name says it all
Plugin 'Glench/Vim-Jinja2-Syntax'

call vundle#end()

filetype plugin indent on
syntax on

set spell
set tabstop=2 shiftwidth=2 expandtab
"set textwidth=79
set formatoptions+=t

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

" nerdtree staff
let g:NERDTreeDirArrows=0
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_open_on_console_startup = 0
set autochdir
let NERDTreeChDirMode=2
" autocmd vimenter * if !argc() | NERDTree c:\dev\workspace | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>

" _gvimrc stuff
if has("gui_running")
  colorscheme torte 
else 
  colorscheme darkblue
endif

