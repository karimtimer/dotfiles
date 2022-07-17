set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'mileszs/ack.vim' " Run your favorite search tool from Vim, with an enhanced results list.
Plugin 'rking/ag.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'neoclide/coc.nvim'
Plugin 'junegunn/fzf' " fuzzy match
Plugin 'junegunn/fzf.vim' " buffer search
Plugin 'mildred/vim-bufmru' " Switch buffers in most recently used order
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mhinz/vim-startify'
Plugin 'yegappan/grep'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-endwise'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'elmcast/elm-vim'
Plugin 'dense-analysis/ale' " install ale
Plugin 'alvan/vim-closetag' " Automatically closes HTML tags once you finish typing them.
Plugin 'andrewradev/tagalong.vim' " Change an HTML(ish) opening tag and take the closing one along as well
Plugin 'prettier/vim-prettier' " vim plugin wrapper for prettier, pre-configured with custom default prettier settings
Plugin 'kaicataldo/material.vim'
call vundle#end()            " required

let mapleader= ","

set background=dark
colorscheme material
let g:material_theme_style = 'darker'
set termguicolors
set number

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2

" Silver searcher
nnoremap <leader>s :Ag<CR>

"fugitive
nnoremap <silent>blame :Git blame<CR>


let  g:NERDTreeChDirMode = 2
nnoremap <C-n> :NERDTree<CR>
" nnoremap <leader>a :NERDTreeFocus<CR>
nnoremap <leader>m :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" let g:airline_theme='deus'
let g:airline_theme = 'material'

nnoremap <Leader>b :b <C-d>
nnoremap <leader><leader> :b#<cr>

let g:ale_set_highlights = 0
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

"" Coc
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"" Ruby
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"" vim styling
autocmd Filetype css setlocal tabstop=4 " indenting
set hlsearch " set search highlighting

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
