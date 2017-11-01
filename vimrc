"set lines=31 columns=110 "设置窗口大小

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

set foldmethod=indent   " 设置缩进折叠
set foldlevelstart=99   " 打开文件是默认不折叠代码

set backspace=indent,eol,start "设置退格

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 "设置文件编码，解决中文问题

if has("gui_gtk2")
    set guifont=DejaVu\ Sans\ Mono\ 10
elseif has("gui_macvim")
    set guifont=DejaVu_Sans_Mono:h10
elseif has("gui_win32")
    set guifont=DejaVu_Sans_Mono:h10
end

let mapleader = ","

"快速编辑 .vimrc
map <silent> <leader>ee :e ~/.vimrc<cr>

map <silent> <leader>bn :bn<cr>
map <silent> <leader>bp :bp<cr>

".vimrc改变时重载
autocmd! bufwritepost .vimrc source ~/.vimrc

filetype off

"Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tomasr/molokai'

Plugin 'scrooloose/nerdtree'

Plugin 'Raimondi/delimitMate'

Plugin 'hdima/python-syntax'
let python_highlight_all = 1

Plugin 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1

Plugin 'terryma/vim-multiple-cursors'

Plugin 'w0rp/ale'
let g:ale_python_flake8_args = '--max-line-length=120'

Plugin 'terryma/vim-expand-region'

Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

Plugin 'honza/vim-snippets'

Plugin 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
map <silent> <F7> ::YcmCompleter GoToDeclaration<cr>

Plugin 'majutsushi/tagbar'
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 30

Plugin 'edkolev/promptline.vim'

call vundle#end()
filetype plugin indent on "开启文件插件

let g:promptline_preset = {
        \'a'    : [ '$USER' ],
        \'b'    : [ promptline#slices#cwd() ],
        \'warn' : [ promptline#slices#last_exit_code() ],
        \'z'    : [ promptline#slices#vcs_branch() ]}

"配色方案
colorscheme molokai
set t_Co=256

"设置第80行高亮
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,200),",")
