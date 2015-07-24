:set number

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

set shell=/bin/bash

filetype plugin on
set omnifunc=syntaxcomplete#Complete
syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
setlocal foldmethod=syntax
setlocal foldlevel=99

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set wildmenu "visual autocomplete for command menu

set showcmd "show command in bottom bar

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line 
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" " enable all Python syntax highlighting features
let python_highlight_all = 1

Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_match_window = 'bottom,order:ttb'
"let g:ctrlp_switch_buffer = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" The bundles you install will be listed here
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" It provides statuslines and prompts for several other applications, including
" zsh, bash, tmux, IPython, Awesome and Qtile
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

Bundle 'klen/python-mode'
augroup vimrc_autocmds
    autocmd!
   " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=Yellow guibg=Black
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
    augroup END


" Python-mode
" " Activate rope
" " Keys:
" " K             Show python docs
" " <Ctrl-Space>  Rope autocomplete
" " <Ctrl-c>g     Rope goto definition
" " <Ctrl-c>d     Rope show documentation
" " <Ctrl-c>f     Rope find occurrences
" " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" " [[            Jump on previous class or function (normal, visual, operator
" modes)
" " ]]            Jump on next class or function (normal, visual, operator
" modes)
" " [M            Jump on previous class or method (normal, visual, operator
" modes)
" " ]M            Jump on next class or method (normal, visual, operator
" modes)

let g:pymode_rope = 0

" Documentation
"let g:pymode_doc = 1
"let g:pymode_doc_key = 'K'
"
"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
" Support virtualenv
let g:pymode_virtualenv = 1
" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" " Don't autofold code
let g:pymode_folding = 0


Bundle 'tpope/vim-fugitive'
" Git wrapper 

Bundle 'scrooloose/nerdtree'
" Directory tree
map <F2> :NERDTreeToggle<CR>
" It tells vim that you want to setup a command to run when vim starts
autocmd VimEnter * NERDTree
" It will move the cursor into the main window
autocmd VimEnter * wincmd p

Bundle 'jelera/vim-javascript-syntax'
au FileType javascript call JavaScriptFold()
syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
setlocal foldmethod=syntax
setlocal foldlevel=99

Bundle 'moll/vim-node'
" Tools to make Vim superb for developing with Node.js

Bundle 'Raimondi/delimitMate'
" It provides insert mode auto-completion for quotes, parens, brackets, etc.

"Bundle 'burnettk/vim-angular'

"Bundle 'mattn/emmet-vim'
" It provides support for expanding abbreviations similar to emmet
" Toggle comment freezes :/

Bundle 'scrooloose/syntastic'
" Syntax checking hacks for vim
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

Bundle 'Valloric/YouCompleteMe'

Bundle 'marijnh/tern_for_vim'

"
Bundle 'hail2u/vim-css3-syntax'

Bundle 'severin-lemaignan/vim-minimap'

Bundle 'Valloric/MatchTagAlways'

:inoremap <lt>/ </<C-X><C-O>
:imap <C-Space> <C-X><C-O>

Plugin 'mattn/emmet-vim'
let g:user_emmet_leader_key='ee'

set term=xterm-256color
