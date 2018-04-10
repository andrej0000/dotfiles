set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf-8
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'

Plugin 'altercation/vim-colors-solarized'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'junegunn/fzf.vim'

let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_layout = { 'down': '~20%' }

Plugin 'flazz/vim-colorschemes'

"Plugin 'stephenmckinney/vim-solarized-powerline'
"
"Plugin 'pearofducks/solarized-powerlines'
"
Plugin 'kien/rainbow_parentheses.vim'
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

"
"Plugin 'scrooloose/syntastic'
"
Plugin 'Valloric/YouCompleteMe'
let g:ycm_key_list_select_completion   = ['<tab>', '<Down>']
let g:ycm_key_list_previous_completion = ['<s-tab>', '<Up>']
"
Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
"
Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
"
" Snippets for ultisnips
Plugin 'honza/vim-snippets'
"
Plugin 'scrooloose/nerdtree'
let g:NERDTreeWinSize=45
"
Plugin 'majutsushi/tagbar'
let g:tagbar_width=45
"Plugin 'fatih/vim-go'
"
"Plugin 'hari-rangarajan/CCTree'
"
"Plugin 'tpope/vim-surround'
"
"Plugin 'tpope/vim-commentary'
"
Plugin 'craigemery/vim-autotag'

Plugin 'tpope/vim-fugitive'

Plugin 'morhetz/gruvbox'

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

au! BufRead,BufNewFile *.cu set filetype=cuda
au! BufRead,BufNewFile *.cuh set filetype=cuda


nnoremap <C-t> :pop<CR>

nnoremap <F5> :buffers<CR>:buffer<Space>

" Ctrl-HJKL for movement between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

nmap <F8> :TagbarToggle<CR>

map <F7> :NERDTreeToggle<CR>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>


" inoremap k <Up>
" inoremap j <Down>
" inoremap l <Right>
" inoremap h <Left>

syntax on
set background=dark
"colorscheme solarized
colorscheme gruvbox
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
set foldmethod=marker
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set cino+=(0


"let g:Powerline_colorscheme='solarized16_dark'
let g:Powerline_symbols='fancy'
let g:airline_powerline_fonts=1


"let g:syntastic_c_compiler='gcc'
"let g:syntastic_cpp_compiler='g++-4.9'
"let g:syntastic_cpp_compiler_options='-std=c++11 -march=core-avx2'
"let g:syntastic_c_compiler_options='-march=core-avx2'
"let g:syntastic_cuda_check_header = 1
"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"PEP 8 PYTHON
autocmd Filetype python set smartindent
autocmd Filetype python set tabstop=4
autocmd Filetype python set shiftwidth=4
autocmd Filetype python set expandtab

"YCM and UltiSnips
" function! g:UltiSnips_Complete()
" 	call UltiSnips#ExpandSnippet()
" 	if g:ulti_expand_res == 0
" 		if pumvisible()
" 			return "\<C-n>"
" 		else
" 			call UltiSnips#JumpForwards()
" 			if g:ulti_jump_forwards_res == 0
" 				return "\<TAB>"
" 			endif
" 		endif
" 	endif
" 	return ""
" endfunction

" au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsListSnippets="<c-e>"
" let g:UltiSnipsExpandTrigger="<c-l>"

" this mapping Enter key to <C-y> to chose the current highlight item
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
" inoremap <expr> <CR> pumvisible() ? "\<C-y>":"\<C-g>u\<CR>"

" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsExpandTrigger = "<c-j>"
"let g:UltiSnipsJumpForwardTrigger = "<c-j>"
"let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

" VIMGO
"au FileType go nmap <Leader>e <Plug>(go-rename)
" au FileType go set gofmt_command goimports


" GCC MACRO EXPANSION

"function! ExpandCMacro()
"  "get current info
"  let l:macro_file_name = "__macroexpand__" . tabpagenr()
"  let l:file_row = line(".")
"  let l:file_name = expand("%")
"  let l:file_window = winnr()
"  "create mark
"  execute "normal! Oint " . l:macro_file_name . ";"
"  execute "w"
"  "open tiny window ... check if we have already an open buffer for macro
"  if bufwinnr( l:macro_file_name ) != -1
"    execute bufwinnr( l:macro_file_name) . "wincmd w"
"    setlocal modifiable
"    execute "normal! ggdG"
"  else
"    execute "bot 10split " . l:macro_file_name
"    execute "setlocal filetype=cpp"
"    execute "setlocal buftype=nofile"
"    nnoremap <buffer> q :q!<CR>
"  endif
"  "read file with gcc
"  silent! execute "r!gcc -E " . l:file_name
"  "keep specific macro line
"  execute "normal! ggV/int " . l:macro_file_name . ";$\<CR>d"
"  execute "normal! jdG"
"  "indent
"  execute "%!indent -st -kr"
"  execute "normal! gg=G"
"  "resize window
"  execute "normal! G"
"  let l:macro_end_row = line(".")
"  execute "resize " . l:macro_end_row
"  execute "normal! gg"
"  "no modifiable
"  setlocal nomodifiable
"  "return to origin place
"  execute l:file_window . "wincmd w"
"  execute l:file_row
"  execute "normal!u"
"  execute "w"
"  "highlight origin line
"  let @/ = getline('.')
"endfunction


