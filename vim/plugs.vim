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

Plug 'mhinz/vim-signify'

Plug 'vim-scripts/vcscommand.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Shougo/vimproc.vim'          " Force install a dependency of tsuquyomi.
Plug 'leafgarland/typescript-vim'  " enables TypeScript syntax-highlighting.
Plug 'Quramy/tsuquyomi'
" Plug 'mhartington/nvim-typescript'

" let g:tsuquyomi_use_dev_node_module = 2
" let g:tsuquyomi_tsserver_path = '/google/src/head/depot/google3/third_party/javascript/node_modules/typescript/stable/lib/tsserver.js'
" let g:nvim_typescript#server_path = '/google/src/head/depot/google3/third_party/javascript/node_modules/typescript/stable/lib/tsserver.js'

autocmd FileType typescript nmap <buffer> <Leader>t: <C-u>echo tsuquyomi#hint()<CR>
autocmd FileType typescript setlocal completeopt+=menu,preview

nnoremap <silent> <leader>h :echo tsuquyomi#hint()<CR>
" Plug 'mhartington/deoplete-typescript'


filetype plugin indent on
syntax on
call plug#end()
