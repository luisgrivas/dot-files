set ai
set showmatch
set backspace=indent,eol,start
set noshowmode
set clipboard=unnamed
set nocompatible              " be iMproved, required
set number
set nobackup
set incsearch
set hlsearch
set laststatus=2
set mouse=a
set smartcase
set visualbell
set relativenumber
set title
set expandtab
set tabstop=4
set ruler
set colorcolumn=80

set laststatus=2

syntax on

call plug#begin()

Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
Plug 'github/copilot.vim'
call plug#end()

let mapleader = " "
nnoremap <leader>t :NERDTreeToggle<CR>

" Automatically close NERDTree when you open a file
let NERDTreeQuitOnOpen=1
noremap <leader>q :q<cr>
nnoremap <TAB> <C-W><C-W>
nnoremap <leader>w :w<cr>
" inoremap <leader>w <C-c>:w<cr>

nnoremap ; :
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme onedark

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
let g:codeium_enabled = v:false

inoremap <C-L> <Plug>(copilot-next) 
inoremap <Left> <Plug>(copilot-previous)
inoremap <Down> <Plug>(copilot-dismiss)
" imap <C-L> <Plug>(copilot-accept-word)
