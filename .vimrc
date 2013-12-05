set lines=31 columns=120 "设置窗口大小

set nocompatible "设置不兼容模式
set number "显示行数
set smartindent "设置智能缩进
set autoindent "设置自动缩进
syntax on "开启语法高亮

set showmatch "显示配对

set ignorecase "搜索时不区分大小写
set smartcase "当搜索词有大写时区分大小写

set cursorline "突出显示当前行

"设置空格代替Tab
set expandtab 
set shiftwidth=4
set tabstop=4

"set showtabline=2 "一直显示标签页
set laststatus=2  "一直显示状态栏

set nobackup   "设置无备份文件
set noswapfile "设置无交换文件

set backspace=indent,eol,start "设置退格

set fileencodings=utf-8,gb2312,gbk,gb18030 "设置文件编码，解决中文问题


let mapleader = ","

"快速编辑 .vimrc
map <silent> <leader>ee :e ~/.vimrc<cr>
".vimrc改变时重载
autocmd! bufwritepost .vimrc source ~/.vimrc

filetype off

"Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tomasr/molokai'

Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'

Bundle 'honza/vim-snippets'

Bundle 'scrooloose/nerdtree'

Bundle 'Yggdroot/indentLine'

Bundle 'Raimondi/delimitMate'

Bundle 'hdima/python-syntax'
let python_highlight_all = 1

Bundle 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1

Bundle 'terryma/vim-multiple-cursors'

Bundle 'scrooloose/syntastic'
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = "--max-line-length=100"

filetype plugin indent on "开启文件插件

"配色方案
colorscheme molokai
set t_Co=256

"设置第80行高亮
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,200),",")
