" Common config {

" 设置行号
set number

" 语法高亮
syntax  on

" 不生成备份文件
set nobackup 

" 不创建临时交换文件
set noswapfile     

" 右下角显示光标位置
set ruler

" 查找不区分大小写
set ignorecase

" 查找高亮
set hlsearch

" 启用256色
set t_Co=256

" 不兼容VI
set nocompatible

" 设置保存历史(命令, 查找模式的历史
set history=1024

" 右下角显示未完成的命令 
set showcmd

" 再输入部分查找模式时显示相应的匹配点 
set incsearch

" 使用UTF-8编码
set encoding=utf-8

" 所在行高亮
" set cursorcolumn
set cursorline

" 使用鼠标
" set mouse=a

" 恢复光标位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" }

" Plugin Management {

call plug#begin('~/.vim/plugged')
    Plug 'prabirshrestha/vim-lsp'    " lsp
call plug#end()

" }
