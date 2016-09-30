set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'taglist.vim'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"  General
"  ---------------------------------------------------------------------------

syntax enable
syntax on
filetype plugin indent on
set nocompatible
let mapleader = ","
let g:mapleader = ","
set history=1000
set nobackup
set nowritebackup
set noswapfile
set autoread
set autochdir

"  ---------------------------------------------------------------------------
"  UI
"  ---------------------------------------------------------------------------

set cuc                 " 显示竖线
set title
set scrolloff=1
set autoindent
set smartindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
"set cursorcolumn
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set fillchars+=stl:\ ,stlnc:\
"set clipboard=unnamedplus
"set relativenumber
"set undofile

"  ---------------------------------------------------------------------------
"  Text Formatting
"  ---------------------------------------------------------------------------

set nocompatible
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround

set nowrap "" no wrap
set textwidth=99
set formatoptions=n
set colorcolumn=100

" Searching / moving
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
" search (forwards)
nmap <space> /
" search (backwards)
map <C-space> ?

" Switch between buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
" close buffer
nnoremap <leader>d :bd<CR>
" close all buffers
nnoremap <leader>D :bufdo bd<CR>

" Go to home and end using capitalized directions
nnoremap H 0
nnoremap L $

" Speed up scrolling of the viewport slightly
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

nnoremap Y y$

set vb t_vb=                 " 关闭提示音
set noerrorbells
set novisualbell

set laststatus=2
set cmdheight=2
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1

set t_ut=
set t_Co=256

"set background=light
"set background=dark
"colorscheme molokai
"colorscheme gruvbox
set background=dark
"let g:rehash256 = 1
"let g:molokai_original = 1

" solarized options
"if !has('gui_running')
"   let g:solarized_diffmode="high"
"   let g:solarized_termcolors = &t_Co
"   let g:solarized_termtrans = 1
"   let g:solarized_visibility =  "low"
"   set background=dark
"   colorscheme solarized
"endif
"colorscheme smyck

"colorscheme badwolf
"colorscheme base16-atelierheath

"" color set
hi CursorLine cterm=underline
"hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=#2e373b gui=NONE
"hi CursorColumn ctermfg=NONE ctermbg=23 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE

"  ---------------------------------------------------------------------------
"  Bundle
"  ---------------------------------------------------------------------------
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'L9'

Bundle 'terryma/vim-expand-region'
" Default settings. (NOTE: Remove comments in dictionary before sourcing)
let g:expand_region_text_objects = {
            \ 'iw'  :0,
            \ 'iW'  :0,
            \ 'i"'  :0,
            \ 'i''' :0,
            \ 'i]'  :1,
            \ 'ib'  :1,
            \ 'iB'  :1,
            \ 'il'  :0,
            \ 'ip'  :0,
            \ 'ie'  :0,
            \ }

Bundle 'majutsushi/tagbar.git'
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus=1
nnoremap f; :TagbarToggle<cr>

Bundle 'comments.vim'

Bundle 'SuperTab'
let g:SuperTabRetainCompletionType=2

Bundle 'vim-scripts/bufexplorer.zip'
noremap <silent> <CR> :BufExplorer<CR>

Bundle 'scrooloose/syntastic'
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting = 0
highlight SyntasticErrorSign ctermfg=white ctermbg=black

"" python checker
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args='--ignore=E501'

Bundle 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

Bundle 'bronson/vim-trailing-whitespace'

Bundle 'vim-scripts/matchit.zip'
"" % match

"Bundle 'msanders/snipmate.vim'
Bundle 'Raimondi/delimitMate'

Bundle 'Yggdroot/indentLine'
let g:indentLine_noConcealCursor=1
""let g:indentLine_color_term = 239
let g:indentLine_char='┆'

Bundle 'tpope/vim-endwise'
Bundle 'vim-ruby/vim-ruby'
Bundle 'php.vim'

"Bundle 'fatih/vim-go'
"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_structs = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_build_constraints = 1
"au BufRead,BufNewFile *.go set filetype=go

Bundle 'vim-perl/vim-perl'

Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1

Bundle "scrooloose/nerdtree"
map te :NERDTree<CR>

Bundle "pangloss/vim-javascript"
let g:javascript_enable_domhtmlcss = 1
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"

Bundle 'hynek/vim-python-pep8-indent'

Bundle "kien/ctrlp.vim"
let g:ctrlp_map = "ff"
let g:ctrlp_cmd = "CtrlP"
"let g:ctrlp_by_filename = 1
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v(([\/]\.(git|hg|svn))|(eggs|node_modules))$',
    \ 'file': '\v\.(exe|so|dll|pyc)$',
    \ }
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore .exe
      \ --ignore .so
      \ --ignore .dll
      \ --ignore .pyc
      \ --ignore eggs
      \ --ignore node_modules
      \ -g ""'

nnoremap fg :CtrlPMRUFiles<CR>

Bundle "bling/vim-airline"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

Bundle "vitalk/vim-simple-todo"

Bundle "elzr/vim-json"

""""
"" file au
au BufRead,BufNewFile *.asm set filetype=nasm

imap kk <ESC>l
map ew <ESC>:wq<CR>
map ee <ESC>:q!<CR>

inoremap <C-l> <ESC>$a
inoremap <C-o> <ESC>o
inoremap <C-@> <ESC>la
noremap <C-l> :tabprevious<CR>
noremap fl <C-w>w
inoremap <C-i> <tab>
vnoremap <space> y/<C-R>"<CR>

set pastetoggle=<F5>            "    when in insert mode, press <F5> to go to
                                "    paste mode, where you can paste mass data
                                "                                    "    that won't be
                                "                                    autoindented
                                "                                    "
" 光标回到上次退出时的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'
