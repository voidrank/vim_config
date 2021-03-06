set nu
syntax on
set ai
set smartindent
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set sw=4
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set ts=4
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set sts=4
autocmd FileType javascript,html,htmldjango,css,xml set sw=2
autocmd FileType javascript,html,htmldjango,css,xml set ts=2
autocmd FileType javascript,html,htmldjango,css,xml set sts=2
set expandtab
colorscheme monokai
set term=xterm-256color
set stal=2

map <F9> :! g++ % -g -o %<<cr>



set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Bundle 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Bundle 'tpope/vim-fugitive'

" Git plugin not hosted on GitHub
Bundle 'git://git.wincent.com/command-t.git'
"
" git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" NERDTree
Bundle 'the-nerd-tree'
map <F4> :NERDTree<cr>
map <F3> :NERDTreeToggle<cr>

" auto complete
Bundle 'neocomplcache' 
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1

" syntastic 
Bundle 'syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 2
let g:syntastic_python_python_exec = '/usr/local/bin/python3'
let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_python_flake8_args='--ignore=F403,E501'
let g:syntastic_html_checkers=['']

" passive mode
let g:syntastic_mode_map = {"passive_filetypes":['htmldjango', 'html', 'javascript', 'vim', 'css']}

" python indent
Plugin 'hynek/vim-python-pep8-indent'

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



" Comnent colorscheme set
if has("gui_running")
    "colorscheme default        " It doesn't matter whether you comment this or not
    :
else
    colorscheme desert         " I'd like to use modified desert scheme instead 
                                    " of the default one, in the CLI mode of
                                    " course;-)
endif
