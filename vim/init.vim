set nocompatible

let $vimfiles=expand('~/.vim')
if filereadable(glob("$vimfiles/google.com"))
  source $vimfiles/google.vim
endif

filetype plugin indent on
syntax on

source $vimfiles/plugs.vim
syntax enable

let mapleader = ','

behave mswin
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set colorcolumn=80
set completeopt=menuone,noinsert,noselect
set expandtab
set fillchars=                 " set fillchars=vert:\|,fold:-
set formatoptions=qroc         " see ':help fo-table' for more info
set guioptions=gt              " use 'e' for gui tabs
set history=300                " remember 300 commands
set iskeyword=@,48-57,_,192-255,$,#,-
set laststatus=2               " always show the statusline
set lazyredraw
set linebreak
set list
set listchars=tab:»·,trail:·
set mouse=a
set nowrap
set number                     " show line numbers
set ruler                      " enable ruler
set scrolloff=3
set shiftwidth=2
set showbreak=>>
set showcmd     " show the number of selected lines in the command bar
set softtabstop=2
set switchbuf=useopen
set tabstop=2
set undolevels=1000
set visualbell
set whichwrap=<,>,[,]
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o,*.obj
set wildmenu
set wildmode=list:longest,full
set winwidth=84                " makes sure the active window will always be at least 80 characters
set nohidden
set backupcopy=yes

set titlestring=0\ %t%(\ %M%)%(\ (%{expand(\ " %:~:.:h\")})%)%(\ %a%)

if exists('+breakindent')
  set breakindent                " https://retracile.net/wiki/VimBreakIndent
end

if !has('nvim')
  set ttyfast
  set t_vb=
end

if has('cryptv')
  set cryptmethod=blowfish
endif


if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
endif

let g:netrw_localrmdir='rm -r'

" Plugin specific {{{1

" matchit
" let loaded_matchparen=1 " do not show highlight matching parenthesis automatically
let NERDTreeIgnore=['\.zeus\.sock$', '\~$']
let NERDTreeHijackNetrw = 0
let g:VimuxOrientation = "h"
let g:VimuxHeight = "40"
let g:VimuxUseNearestPane = 1
let g:run_with_vimux=1
let g:user_spec_runners = {
  \ 'ruby': { 'command': 'sp {file}' },
  \ 'java': { 'command': 'make test' }
  \}
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:session_autosave = 'no'
let g:session_autoload = 'no'
let g:gitgutter_eager = 0
let g:instant_markdown_slow = 1
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#auto_completion_start_length = 4
let g:airline_powerline_fonts=1
" let g:airline#extensions#branch#enabled = 0
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_mode_map = { "mode": "active",
                           \ "active_filetypes": [],
                           \ "passive_filetypes": ['haml', 'html', 'dart']}

let g:syntastic_ruby_checkers          = ['rubocop', 'mri']
let g:markdown_fold_style = 'nested'
let g:syntastic_javascript_checkers = ['eslint']

" TypeScript plugin setup
let g:tsuquyomi_use_dev_node_module = 2
let g:tsuquyomi_tsserver_path = '/google/src/head/depot/google3/third_party/javascript/node_modules/typescript/stable/lib/tsserver.js'

" EasyAlign {{{1
let g:easy_align_delimiters = {
      \ '"': { 'pattern': '"', 'ignore_groups': ['String'] },
      \ '>': { 'pattern': '>>\|->\|=>\|>' },
      \ '/': { 'pattern': '//\+\|/\*\|\*/', 'ignore_groups': ['String'] },
      \ '#': { 'pattern': '#\+', 'ignore_groups': ['String'], 'delimiter_align': 'l' },
      \ ']': {
      \     'pattern':       '[[\]]',
      \     'left_margin':   0,
      \     'right_margin':  0,
      \     'stick_to_left': 0
      \   },
      \ ')': {
      \     'pattern':       '[()]',
      \     'left_margin':   0,
      \     'right_margin':  0,
      \     'stick_to_left': 0
      \   },
      \ 'd': {
      \     'pattern': ' \(\S\+\s*[;=]\)\@=',
      \     'left_margin': 0,
      \     'right_margin': 0
      \   },
      \ '\': { 'pattern': '[\\]', 'ignore_groups': [] }
      \ }

let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_javascript_prettier = {
      \ 'exe': 'prettier',
      \ 'args': ['--stdin', '--single-quote'],
      \ 'stdin': 1,
      \ }

" Search {{{1
set incsearch   " incremental search
set ignorecase  " ignore case when search
set smartcase   " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch    " highlight search terms
set wrapscan    " wrap around when searching

" Backup {{{1
set backup writebackup
set backupdir=$HOME/.local/share/vim-backup
set dir=$HOME/.local/share/vim-swap

if !isdirectory(&backupdir)
  call mkdir(&backupdir)
end

if !isdirectory(&dir)
  call mkdir(&dir)
end

" store undo history even after closing a file
let $temp_dir='/tmp/vim-' . $USER

if getftype($temp_dir) != 'dir'
  exec 'silent !mkdir ' . $temp_dir
endif
set undofile undodir=$temp_dir

" Folding {{{1
set nofoldenable    " disable folding

" Unicode {{{1
" With the following settings Vim's UTF-8 behaves as follows:
" - new files with no nonascii chars (>1byte) will be saved as ANSI (no BOM)
" - new files with nonascii chars will be saved as UTF-8 (with BOM)
if &encoding != 'utf-8'
  set encoding=utf-8
endif
" create Unicode files with B.O.M. by default
"setglobal fileencoding=utf-8 bomb
setglobal fileencoding=utf-8
" define the heuristics to recognize file encodings
setglobal fileencodings=ucs-bom,utf-8,default

" Indent Guides {{{1

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey


" Reduce timeout after <ESC> is received. {{{1
set ttimeout
set ttimeoutlen=20
set notimeout

" Grepper {{{1
let g:grepper = {
  \ 'tools':  ['ag'],
  \ 'open':   1,
  \ 'switch': 0,
  \ 'jump':   1
\ }

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

hi link coffeeSpaceError NONE

let g:neomake_coffee_enabled_makers = ['coffeelint']
let g:neomake_scss_enabled_makers = ['scsslint']
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = nrun#Which('eslint')

let g:deoplete#enable_at_startup = 1

let g:neomake_error_sign = {
    \ 'text': '✖',
    \ 'texthl': 'ErrorMsg',
    \ }
let g:neomake_warning_sign = {
    \ 'text': '⚠',
    \ 'texthl': 'WarningMsg',
    \ }

let base16colorspace=256
colorscheme base16-default-dark

highlight MatchParen NONE term=underline cterm=underline gui=underline

func! CoffeeMake()
  if getline(1) =~ 'autocompile'
    silent make
    redraw!
    cw
  end
endfunc

func! EscapeForQuery(text)
  let text = substitute(a:text, '\v(\[|\]|\$|\^)', '\\\1', 'g')
  let text = substitute(text, "'", "''", 'g')
  return text
endfunc

func! EscapeRegisterForQuery(register)
  return EscapeForQuery(getreg(a:register))
endfunc

nnoremap <ESC> :nohls<cr><ESC>

noremap <Leader>ff :Grepper -query '<c-r>=EscapeForQuery(expand("<cword>"))<cr>'<cr>
vnoremap <Leader>ff "9y:Grepper -query '<c-r>=EscapeRegisterForQuery(9)<cr>'<cr>
noremap <Leader>fc :Grepper<cr>

nnoremap <Leader>qq :confirm qall<cr>

nnoremap _ <c-w>-
nnoremap + <c-w>+
nnoremap > <c-w>>
nnoremap < <c-w><

noremap <c-p> :call fzf#run({'sink': 'e', 'window': 'enew'}) <cr>

noremap <Leader>gn :NERDTreeFind<cr>

noremap <Leader>ey "*Y"+Y
vnoremap <Leader>ey "*ygv"+y
noremap <Leader>ep "*p

noremap <Leader>rws :%s/\s\+$//<cr>
noremap <Leader>rq :%s/"/'/g<cr>

vnoremap <silent> <Enter> :EasyAlign<Enter>

map <Leader># ysiw#
vmap <Leader># c#{<C-R>"}<ESC>

map <Leader>" ysiw"
vmap <Leader>" c"<C-R>""<ESC>

map <Leader>' ysiw'
vmap <Leader>' c'<C-R>"'<ESC>

map <Leader>( ysiw(
map <Leader>) ysiw)
vmap <Leader>( c( <C-R>" )<ESC>
vmap <Leader>) c(<C-R>")<ESC>

" <Leader>[ Surround a word with [brackets]
map <Leader>] ysiw]
map <Leader>[ ysiw[
vmap <Leader>[ c[ <C-R>" ]<ESC>
vmap <Leader>] c[<C-R>"]<ESC>

" <Leader>{ Surround a word with {braces}
map <Leader>} ysiw}
map <Leader>{ ysiw{
vmap <Leader>} c{ <C-R>" }<ESC>
vmap <Leader>{ c{<C-R>"}<ESC>

map <Leader>> ysiw>
map <Leader>< ysiw<
vmap <Leader>> c<<C-R>"><ESC>
vmap <Leader>< c<<C-R>"><ESC>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap Q :q<cr>

" replace selection
vnoremap <Leader>r "hy:%s/<C-r>h//g<left><left>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

map <F9> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

func! PostStartupKeys()
  vnoremap <tab> >gv
  vnoremap <s-tab> <gv
  vnoremap <space> 20j
endfunc

vnoremap p "_dP

noremap <C-s> :w<cr>
inoremap <C-s> <ESC>:w<cr>

map <Leader>yfp :YamlGetFullPath<cr>

map <Leader>c :TComment<cr>

noremap <Leader>zz :Neoformat<cr>

" fix <c-h>
nmap <BS> <C-h>
autocmd VimEnter * call PostStartupKeys()

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

autocmd BufWritePost *.coffee call CoffeeMake()
autocmd FileType gitcommit,markdown setlocal spell spellcapcheck=
autocmd FileType gitcommit  setlocal comments=fb:-,fb:* colorcolumn=72 textwidth=72
autocmd BufNewFile,BufRead *.es6 let b:jsx_ext_found = 1
autocmd BufNewFile,BufRead *.es6 set filetype=javascript.jsx

autocmd! BufWritePost * Neomake

" camelcasemotion
call camelcasemotion#CreateMotionMappings('<leader>')
