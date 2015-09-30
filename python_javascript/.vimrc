" Ubuntu 14.04.2 LTS
" VIM - Vi IMproved 7.4
"


set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

:set number

set shell=/bin/bash

set omnifunc=syntaxcomplete#Complete

" " enable all Python syntax highlighting features
let python_highlight_all = 1

"--------------------------------------"
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_match_window = 'bottom,order:ttb'
"let g:ctrlp_switch_buffer = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
"--------------------------------------"

"--------------------------------------"
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" It provides statuslines and prompts for several other applications, including
" zsh, bash, tmux, IPython, Awesome and Qtile
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
"--------------------------------------"

"--------------------------------------"
Plugin 'klen/python-mode'
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

Plugin 'tpope/vim-fugitive'
" Git wrapper 

Plugin 'scrooloose/nerdtree'
" Directory tree
map <F2> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree " It tells vim that you want to setup a command to run when vim starts
"autocmd VimEnter wincmd p " It will move the cursor into the main window

Plugin 'jelera/vim-javascript-syntax'

Plugin 'moll/vim-node'
" Tools to make Vim superb for developing with Node.js

Plugin 'Raimondi/delimitMate'
" Automatically close tags, quotes etc
let delimitMate_expand_cr=1

" Add additional match pairs
set matchpairs+=<:>

"Plugin 'burnettk/vim-angular'

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

Plugin 'marijnh/tern_for_vim'

Plugin 'hail2u/vim-css3-syntax'

Plugin 'Valloric/MatchTagAlways'

:inoremap <lt>/ </<C-X><C-O>
:imap <C-Space> <C-X><C-O>

"Plugin 'mattn/emmet-vim'
"let g:user_emmet_leader_key='<c-e>'

Plugin 'othree/html5.vim'
let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0

Plugin 'groenewege/vim-less'

Plugin 'vim-scripts/AutoComplPop'

Plugin 'Valloric/YouCompleteMe'
"YouCompleteMe and UltiSnips compatibility, with the helper of supertab
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0

Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

Plugin 'honza/vim-snippets'

"if has('signs')
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_escape_grep = 1   " Use raw grep
let g:gitgutter_eager = 0         " Don't run eagerly
"endif

Plugin 'osyo-manga/vim-brightest'
" Highlight current word


Plugin 'sudar/comments.vim'
" Bulk (Un)Comment line.
" Ctrl-c - to comment a single line or visual block
" Ctrl-x - to un-comment a single line or visual block

Plugin 'ntpeters/vim-better-whitespace'

Plugin 'Chiel92/vim-autoformat'
" Auto format code in VIM
noremap <F3> :Autoformat<CR>

" use ,w ,b ,e to navigate CamelCase and underscore identifiers
Plugin 'bkad/CamelCaseMotion'
map <silent> b <Plug>CamelCaseMotion_w
map <silent> w <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" Programmer Color scheme
Plugin 'pw'
"
" " Light ColorScheme
Plugin 'lightdiff'
"
" " 256 color schemes
Plugin 'Eddie.vim'
Plugin 'desert256.vim'
Plugin 'ciaranm/inkpot'
Plugin '256-grayvim'

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

"to stop indenting when pasting with the mouse
set pastetoggle=<f5>


call vundle#end()            " required
filetype plugin indent on    " required
"
filetype indent on

" enable syntax highlighting by forcing reloading of the filetype
syntax enable
filetype plugin on
filetype off
filetype on
