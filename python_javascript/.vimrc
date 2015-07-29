set nocompatible

:set number

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

set shell=/bin/bash

set omnifunc=syntaxcomplete#Complete

" " enable all Python syntax highlighting features
let python_highlight_all = 1

"--------------------------------------"
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_match_window = 'bottom,order:ttb'
"let g:ctrlp_switch_buffer = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
"--------------------------------------"

"--------------------------------------"
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" It provides statuslines and prompts for several other applications, including
" zsh, bash, tmux, IPython, Awesome and Qtile
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
"--------------------------------------"

"--------------------------------------"
Bundle 'klen/python-mode'
augroup vimrc_autocmds
    autocmd!
   " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=Yellow guibg=Black
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
    augroup END
"--------------------------------------"

let g:pymode_rope = 0
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_folding = 0

Bundle 'tpope/vim-fugitive'
" Git wrapper 

Bundle 'scrooloose/nerdtree'
" Directory tree
map <F2> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree " It tells vim that you want to setup a command to run when vim starts
autocmd VimEnter * wincmd p " It will move the cursor into the main window

Bundle 'jelera/vim-javascript-syntax'

Bundle 'moll/vim-node'
" Tools to make Vim superb for developing with Node.js

Bundle 'Raimondi/delimitMate'
" Automatically close tags, quotes etc
let delimitMate_expand_cr=1

" Add additional match pairs
set matchpairs+=<:>

"Bundle 'burnettk/vim-angular'

if v:version > 702
    " Syntax Highlighter
    Plugin 'scrooloose/syntastic.git'
    let g:syntastic_check_on_open = 1   " Enable syntax check when a file is opened or saved
    let g:syntastic_loc_list_height = 5
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_quiet_messages = { "level" : "warnings" }
    nmap <F6> :SyntasticToggleMode<CR> " Toggle Syntax highlight
endif

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Bundle 'Valloric/YouCompleteMe'
"let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

Bundle 'marijnh/tern_for_vim'

Bundle 'hail2u/vim-css3-syntax'

Bundle 'Valloric/MatchTagAlways'

:inoremap <lt>/ </<C-X><C-O>
:imap <C-Space> <C-X><C-O>

"Bundle 'mattn/emmet-vim'
"let g:user_emmet_leader_key='<c-e>'

Bundle 'othree/html5.vim'
let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0

Bundle 'groenewege/vim-less'

Bundle 'vim-scripts/AutoComplPop'

Bundle 'Valloric/YouCompleteMe'
"YouCompleteMe and UltiSnips compatibility, with the helper of supertab
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0

Bundle 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>""

Bundle 'honza/vim-snippets'

if has('signs')
    Bundle "airblade/vim-gitgutter"
    let g:gitgutter_escape_grep = 1   " Use raw grep
    let g:gitgutter_eager = 0         " Don't run eagerly
endif

Bundle 'osyo-manga/vim-brightest'
" Highlight current word


Bundle 'sudar/comments.vim'
" Bulk (Un)Comment line.
" Ctrl-c - to comment a single line or visual block
" Ctrl-x - to un-comment a single line or visual block

Bundle 'ntpeters/vim-better-whitespace'

Bundle 'Chiel92/vim-autoformat'
" Auto format code in VIM
noremap <F3> :Autoformat<CR>

" use ,w ,b ,e to navigate CamelCase and underscore identifiers
Bundle 'bkad/CamelCaseMotion'

" Programmer Color scheme
Bundle 'pw'
"
" " Light ColorScheme
Bundle 'lightdiff'
"
" " 256 color schemes
Bundle 'Eddie.vim'
Bundle 'desert256.vim'
Bundle 'ciaranm/inkpot'
Bundle '256-grayvim'

set tabstop=4     " Width of a tab is 4
set shiftwidth=4  " number of spaces to use for auto indenting
set softtabstop=4 " When backspace is used to delete spaces, delete 4 at a time. This is equal to tabstop and shfitwidth
set listchars=tab:\|\ 
set list

set nowrap        " don't wrap lines
set scrolloff=5   " Show at least 5 lines around the cursor

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set auto indenting on
set copyindent    " copy the previous indentation on autoindenting
set smartindent   " Set intent smartly

set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set wildmenu      " Enhance auto completion

set number        " always show line numbers
set ruler         " Show the current line number in the status bar

" ---------------------------------------------------------------------------
"  " Common settings
"  "
"  ----------------------------------------------------------------------------
"  " Set to auto read when a file is changed from the outside
set autoread
"
" History related settings
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
"
"  " Visual settings
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
"
"  "
"  ---------------------------------------------------------------------------
"  " Search settings
"  "
"  ----------------------------------------------------------------------------
set ignorecase    " ignore case when searching. use \C to force case sensitiveness
set smartcase     " ignore case if search pattern is all lowercase,case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" enable syntax highlighting by forcing reloading of the filetype
syntax enable
filetype plugin on
filetype off
filetype on
