set nocompatible              " be iMproved, required
set t_Co=256
filetype off                  " required
syntax enable


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, requireda
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'bling/vim-airline'                  " Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
Plugin 'Lokaltog/vim-powerline'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
" Plugin 'davidhalter/jedi-vim'
Plugin 'majutsushi/tagbar'                  " Class/module browser
Plugin 'kien/ctrlp.vim'                     " Fast transitions on project files
Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'python-mode/python-mode'
" All of your Plugins must be added before the following line
call vundle#end()            " required
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
"

set backspace=indent,eol,start	" fix my backspace
 
"=====================================================
" powerline
"=====================================================

set laststatus=2
set encoding=utf-8

"=====================================================
"NERDTree
"=====================================================
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

map <F2> :NERDTreeToggle<CR>

"=====================================================
" jedi-vim  (disabled since low searching speed)
"=====================================================

let g:jedi#completions_command = "<C-N>"

"=====================================================


"=====================================================
" latex on vim
"=====================================================
let g:livepreview_previewer = 'evince'

"=====================================================
"" AirLine settings
"=====================================================
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1

"=====================================================
"" TagBar settings
"=====================================================
let g:tagbar_autofocus=0
let g:tagbar_width=42
autocmd BufEnter *.py :call tagbar#autoopen(0)
autocmd BufWinLeave *.py :TagbarClose

nmap <F8> :TagbarToggle<CR>
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

"=====================================================
" py mode
" ====================================================
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-N>'
let g:pymode_lint = 0
let g:pymode_virtualenv = 1
let g:pymode_indent = 1
let g:pymode_doc = 1
