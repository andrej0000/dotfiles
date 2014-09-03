set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Plugin 'Valloric/YouCompleteMe'

Plugin 'Lokaltog/vim-powerline'

Plugin 'stephenmckinney/vim-solarized-powerline'

Plugin 'pearofducks/solarized-powerlines'

Plugin 'kien/rainbow_parentheses.vim'

Plugin 'scrooloose/syntastic'

Plugin 'majutsushi/tagbar'

Plugin 'SirVer/ultisnips'

Plugin 'honza/vim-snippets'

"  Parentheses colours using Solarized
let g:rbpt_colorpairs = [
			\ [ '13', '#6c71c4'],
			\ [ '5',  '#d33682'],
			\ [ '1',  '#dc322f'],
			\ [ '9',  '#cb4b16'],
			\ [ '3',  '#b58900'],
			\ [ '2',  '#859900'],
			\ [ '6',  '#2aa198'],
			\ [ '4',  '#268bd2'],
			\ ]

" Enable rainbow parentheses for all buffers
augroup rainbow_parentheses
	au!
	au VimEnter * RainbowParenthesesActivate
	au BufEnter * RainbowParenthesesLoadRound
	au BufEnter * RainbowParenthesesLoadSquare
	au BufEnter * RainbowParenthesesLoadBraces
augroup END

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
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
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

au! BufRead,BufNewFile *.cuh set filetype=cuda

nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <F5> :buffers<CR>:buffer<Space>

nmap <F8> :TagbarToggle<CR>

" inoremap k <Up>
" inoremap j <Down>
" inoremap l <Right>
" inoremap h <Left>

syntax on
set background=dark
colorscheme solarized
highlight ExtraWhitespaces ctermbg=red guibg=red
match ExtraWhitespaces /\s\+$\| \+\ze\t/
set number
set hlsearch
set incsearch
set autoindent
set noerrorbells
set nobackup
set noswapfile
set laststatus=2
set cursorline
set colorcolumn=80
set hidden
set ttyfast
set lazyredraw
"let g:Powerline_symbols = 'fancy'
"let g:Powerline_theme='short'
let g:Powerline_colorscheme='solarized16_dark'
let g:syntastic_cpp_compiler='g++-4.9'
let g:syntastic_cpp_compiler_options='-std=c++11'
let g:syntastic_cuda_check_header = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"



