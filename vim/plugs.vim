set nocompatible
filetype off
filetype plugin indent off

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-grepper'
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTree', 'NERDTreeToggle', 'NERDTreeFocus', 'NERDTreeFind'] }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'ntpeters/vim-better-whitespace'
Plug 'benekastah/neomake'
Plug 'scrooloose/syntastic'
Plug 'gcorne/vim-sass-lint'
Plug 'cakebaker/scss-syntax.vim'
Plug 'chriskempson/base16-vim'
Plug 'airblade/vim-gitgutter'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-fugitive'
Plug 'ngmy/vim-rubocop'
Plug 'lmeijvogel/vim-yaml-helper'
Plug 'dkprice/vim-easygrep'
Plug 'mattn/emmet-vim'
Plug 'digitaltoad/vim-jade',           { 'for': 'jade' }
Plug 'digitaltoad/vim-pug',            { 'for': ['jade', 'pug'] }
Plug 'othree/yajs.vim',                { 'for': 'javascript' }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }

filetype plugin indent on
syntax on
call plug#end()
