set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
set number
syntax on
set t_Co=256
colorscheme twilight256
set laststatus=2
set expandtab
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdTree'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'vim-scripts/twilight256.vim'

map <F3> :NERDTreeToggle<CR>
map <C-n> :bn<CR>
map <C-p> :bp<CR>
map <C-w> :w!<CR>
map <C-b> :enew<CR>
map <C-d> :bd<CR>
map <C-x> :bdelete<CR>
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"Enable list of buffer
let g:airline#extensions#tabline#enabled = 1
"Show filename
let g:airline_theme = 'bubblegum'
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'

call vundle#end()
