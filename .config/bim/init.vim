call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'

source $HOME/.config/nvim/plug-config/coc.vim

call plug#end()

source $HOME/.config/nvim/snippets.vim


"""" VIM CONFIG """"

" Directions when splitting
set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99

" IDK
au BufNewFile,BufRead *.py,*.js,*.java,*.cpp,*.c,*.rkt,*.h
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

set encoding=utf-8

syntax on

" Relative line numbers
set nu rnu

" Show last command
set showcmd

" /shrug
set noswapfile

" Compatibility
set backspace=indent,eol,start

" Directions when splitting
set wildmenu

" Performance
set lazyredraw

" Highlights matching brackets
set showmatch

" Search while typing at /
set incsearch

" Highlight results when searching with /
set hlsearch

 " No line breaking at the end of the screen
set nowrap

" Make space below the cursor
set scrolloff=5

" Search selectively case sensitivity
set ignorecase
set smartcase

" Enable mouse
set mouse=a

set tabstop=4

" For Vimwiki
set nocompatible
filetype plugin on

" NerdTree on right side
let g:NERDTreeWinPos = "right"

" Prevent nerdtree from beeing last open windows.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Close NerdTree after opening a file
let NERDTreeQuitOnOpen = 1

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

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

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '|'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


"""" MAPPINGS """"

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

" Run code
autocmd FileType python nnoremap <buffer> ,r :w<cr>:!python3 "%"<cr>
autocmd FileType cpp nnoremap <buffer> ,c :w<cr>:!g++ -std=c++17 -Wall -O2 % -o %:r<cr>
autocmd FileType cpp nnoremap <buffer> ,r :!./"%:r"<cr>
autocmd FileType typescript nnoremap <buffer> ,r :w<cr>:!deno run "%"<cr>
autocmd FileType make nnoremap <buffer> ,r :w<cr>:!make<cr>

" Comment
nnoremap // I# <Esc>
autocmd FileType vim nnoremap // I" <Esc>
autocmd FileType python nnoremap // I# <Esc>
autocmd FileType make nnoremap // I# <Esc>

" Uncomment
nnoremap d/ ^"_dw<Esc>

" Go trough buffers
map <C-i> :bp<cr>
map <C-o> :bn<cr>

" Yank and paste
map <c-y> "+y
map <C-p> "+p

" Space in brackets
map <leader><space> cs}{

" Reload vimrc
nnoremap <leader>r :source $MYVIMRC<cr>


"""" THEME """"

" true colours
set background=dark
set t_Co=256

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

colorscheme palenight
let g:palenight_terminal_italics=1
let g:airline_theme = "palenight"

" Transparent background
hi Normal guibg=NONE ctermbg=NONE
