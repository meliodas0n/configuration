call plug#begin('~/.vim/autoload')
    Plug 'junegunn/vim-easy-align'
    Plug 'joshdick/onedark.vim'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/syntastic'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'jiangmiao/auto-pairs'
    Plug 'morhetz/gruvbox'
    Plug 'shinchu/lightline-gruvbox.vim'
    Plug 'neoclide/coc.nvim'
    Plug 'https://github.com/ap/vim-css-color'
    Plug 'https://github.com/terryma/vim-multiple-cursors'
    Plug 'https://github.com/ryanoasis/vim-devicons'
    Plug 'https://github.com/tc50cal/vim-terminal'
    Plug 'arcticicestudio/nord-vim'
    Plug 'tribela/vim-transparent'
    Plug 'flazz/vim-colorschemes'
call plug#end()

set nocompatible
filetype plugin indent on
syntax on
set encoding=UTF-8
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set relativenumber
set mouse=a
set hlsearch
set incsearch
set hidden
set fdm=indent
set foldlevelstart=99
set ignorecase
set smartcase
set colorcolumn=120
set splitbelow splitright " set default position for where a split open

" colorscheme transparent

" colorscheme nord

" colorscheme for sunbather
" colorscheme sunbather
" set background=dark

" colorscheme for two-firewatch
" set background=dark
" let g:two_firewatch_italics=1
" colo two-firewatch
" let g:airline_theme='twofirewatch'     seems not working

" colorscheme for gruvbox
" colorscheme gruvbox
" set bg=dark

" colorscheme for molokai
" let g:lightline={}
" colorscheme molokai 
" let g:molokai_original = 1
" let g:rehash256 = 1

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Keybindings
"
" leader keys
let mapleader=" "
let mpalocalleader="\\"

" faster way to ESC from insert mode
map kj <ESC>

"open config file in a new tab
nnoremap <leader>ev :tabedit $MYVIMRC<CR>

" reload config file
nnoremap <leader>sv :source $MYVIMRC<CR>

" clear search highlights
nnoremap <silent> <leader>a :<C-u>nohlsearch<CR><C-l>

" navigate between buffers
nnoremap <leader>j :bprevious<CR>
nnoremap <leader>k :bnext<CR>
nnoremap <leader>h :bfirst<CR>
nnoremap <leader>l :blast<CR>

" show all buffers and let user choose one
nnoremap <leader>i :ls<CR> :b<Space>

" delete current buffer
nnoremap <leader>dd :bd<CR>

" close current window
nnoremap <leader>c :q<CR>

" write current buffer
nnoremap <leader>w :write<CR>

" navigate between tabs
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt

" toggle highlight current line
nnoremap <leader>ar :setlocal cursorline!<CR>

" toggle highlight current column
nnoremap <leader>ac :setlocal cursorcolumn!<CR>

" switch between two buffer
nnoremap <leader><tab> <C-^>

" add current line to X Clipboard
nnoremap <leader>yy :normal "+yy<CR>

" add current selected test to X clipboard
xnoremap <leader>yy :normal gv"+y<CR>

" jump up 4 lines in normal mode
nnoremap <silent> <C-k> :normal 4k<CR>

" jump down 4 lines in normal mode
nnoremap <silent> <C-j> :normal 4j<CR>

" jump up 4 lines in visual mode
nnoremap <silent> <C-k> :normal gv4k<CR>

" jump down 4 lines in visual mode
nnoremap <silent> <C-j> :normal gv4j<CR>

" colorschemes
set termguicolors

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>


" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" tab to autofinish the highlighted suggestion
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" transparency stuff
" This makes vim transparent in terminal by default
hi Normal ctermbg=NONE guibg=NONE
