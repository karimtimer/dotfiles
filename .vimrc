set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'mileszs/ack.vim' " Run your favorite search tool from Vim, with an enhanced results list.
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf' " fuzzy match
Plugin 'junegunn/fzf.vim' " buffer search
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mhinz/vim-startify'
Plugin 'yegappan/grep'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" RoR specific plugins
Plugin 'tpope/vim-endwise'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'skalnik/vim-vroom'
Plugin 'osyo-manga/vim-monster'
" Elm specific plugins
Plugin 'elmcast/elm-vim'
Plugin 'dense-analysis/ale' " install ale
Plugin 'alvan/vim-closetag' " Automatically closes HTML tags once you finish typing them.
Plugin 'andrewradev/tagalong.vim' " Change an HTML(ish) opening tag and take the closing one along as well
Plugin 'prettier/vim-prettier' " vim plugin wrapper for prettier, pre-configured with custom default prettier settings
call vundle#end()            " required

let mapleader= ","

set number

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2

let  g:NERDTreeChDirMode = 2
nnoremap <C-n> :NERDTree<CR>
nnoremap <leader>a :NERDTreeFocus<CR>
nnoremap <leader>m :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:airline_theme='deus'
let g:ackprg = 'ag --vimgrep'

nnoremap <Leader>b :b <C-d>
nnoremap <leader><leader> :b#<cr>

"" RSpec.vim mappings
let &path = getcwd() . '/**'
let g:rspec_runner = "os_x_iterm2"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

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

