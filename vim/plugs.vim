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
Plug 'benekastah/neomake'
Plug 'cakebaker/scss-syntax.vim'
Plug 'chriskempson/base16-vim'
Plug 'airblade/vim-gitgutter'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'lmeijvogel/vim-yaml-helper'
Plug 'dkprice/vim-easygrep'
Plug 'digitaltoad/vim-jade',           { 'for': 'jade' }
Plug 'digitaltoad/vim-pug',            { 'for': ['jade', 'pug'] }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'jaawerth/nrun.vim'
Plug 'bkad/CamelCaseMotion'
Plug 'fatih/vim-go', { 'for': ['go'] }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'

Plug 'vim-scripts/vcscommand.vim'

filetype plugin indent on
syntax on
call plug#end()
