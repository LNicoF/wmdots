call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'Raimondi/delimitMate'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'

source $HOME/.config/nvim/plug-config/coc.vim

call plug#end()

source $HOME/.config/nvim/snippets.vim


""""""""""""""""""""
"""" VIM CONFIG """"
""""""""""""""""""""

" Relative line numbers
set nu rnu

" Line number on statusline
set ruler

" Directions when splitting
set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99

" IDK
au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.rkt,*.h
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

set encoding=utf-8

syntax on

" Show tabline
set stal=0

" Hide statusline
set ls=0

" Show last command
set showcmd

" /shrug
set noswapfile

" Show actual mode when not normal
set showmode

" Compatibility
set backspace=indent,eol,start

" Completion menu on command mode
set wildmenu

" Performance
set lazyredraw

" Search while typing at /
set incsearch

" Highlight results when searching with /
set hlsearch

" Highlights matching brackets
set showmatch

 " No line breaking at the end of the screen
set nowrap

" Enable mouse
set mouse=a

" Make space below the cursor
set scrolloff=5

" Search selectively case sensitivity
set ignorecase
set smartcase

set tabstop=4


""""""""""""""""""
"""" NERDTREE """"
""""""""""""""""""

" NerdTree on right side
let g:NERDTreeWinPos = "right"


""""""""""""""""""
"""" MAPPINGS """"
""""""""""""""""""

" Reload config
map <leader>r :source $MYVIMRC<cr>

" Buffer Jumping
map <c-i> :bp!<cr>
map <c-o> :bn!<cr>

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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

" Yank and paste
map <c-y> "+y
map <C-p> "+p

" Space in brackets
map <leader><space> cs}{


"""""""""""""""
"""" THEME """"
"""""""""""""""

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

" Transparent background
hi Normal guibg=NONE ctermbg=NONE
