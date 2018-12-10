set nu
set noeb vb t_vb=
nmap <tab> ;;
"set notermguicolors
set tabstop=4
set pastetoggle=<F2>
set softtabstop=4
set cursorline
syntax enable
syntax on
let mapleader=";"
"set omnifunc=syntaxcomplete#Complete
"set omnifunc=jedi#completions
"set t_Co=256
"let g:solarized_termcolors=16
autocmd BufNewFile,BufRead *.r2py,*.repy set syntax=python
"""""""""""""""""""""""""""""""""""""""""Vundld""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " 这是必需的 
filetype off                  " 这是必需的 
"适应不同文件类型的缩进
filetype plugin indent on
" 你在此设置运行时路径 
set rtp+=~/.vim/bundle/Vundle.vim  
 
" vundle初始化 
call vundle#begin()  
 
" 这应该始终是第一个 
Plugin 'gmarik/Vundle.vim' 
 
" 该例子来自https://github.com/gmarik/Vundle.vim README 
"Plugin 'tpope/vim-fugitive'  
 
" 来自http://vim-scripts.org/vim/scripts.html的插件 
"Plugin 'L9'  
"Plugin 'ctrlp.vim' 
"未托管在GitHub上的Git插件 
"Plugin 'git://git.wincent.com/command-t.git'  
 
"本地机器上的git软件库（即编写自己的插件时） 
Plugin 'file:///Users/Caking_s/.vim/bundle/vim-sensible/'
 
" sparkup vim脚本在名为vim的该软件库子目录下。 
" 传递路径，合理设置运行时路径。 
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} 
 
" 与L9避免名称冲突 
"Plugin 'user/L9', {'name': 'newL9'}  
 
"每个插件都应该在这一行之前  


Plugin 'lepture/vim-jinja'
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'suan/vim-instant-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='angr'
let g:airline#extensions#tabline#show_buffers = 2
let g:airline#extensions#tabline#show_tabs = 1
"let g:AirlineTheme = 'angr' 
"Plugin 'python-mode/python-mode'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'davidhalter/jedi-vim'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
vmap <Leader>y "+y
nmap <Leader>y "ay
nmap <Leader>p "ap
nmap <Leader>w <C-W>
nmap <Leader>nt :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
Plugin 'flazz/vim-colorschemes'
call vundle#end()            " required
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
""""""""""""indent line
Plugin 'Yggdroot/indentLine'
""""""""""""""""""""""""""""""""""""""""tagbar"
nmap <Leader>tb :TagbarToggle<CR>
"""""""""""""""""""""""""""""""""""""""""Vundld""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch
"set background=dark
nmap LB 0
nmap LE $
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
"colorscheme molokai
"lucius
"colorscheme gruvbox
"colorscheme zenburn
colorscheme evening
"""""""""""""""""""""""""""""""""""""""""powerline""""""""""""""""""""""""""""""""""""""""" 
"set g:powerline_pycmdset laststatus=2
"let g:Powerline_symbols='unicode'
"#let g:Powerline_colorscheme='solarized256'
"""""""""""""""""""""""""""""""""""""""""powerline""""""""""""""""""""""""""""""""""""""""" 
"""""""""""""""""""""""""""""""""""""""""jedi"""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "context"  
let g:jedi#popup_on_dot = 0  
let g:jedi#auto_close_doc = 1
"""""""""""""""""""""""""""""""""""""""""jedi"""""""""""""""""""""""""""""""""""""""""
let g:jedi#completions_command = "<C-N>"
nmap <Leader>j 40<C-e>
nmap <Leader>k 40<C-y>
"python-mode
"let g:pymode_run_bind = '<leader>r'
"let g:pymode_rope = 0
"let g:pymode_rope_complete_on_dot= 0
""let g:pymode_rope_completion = 1
""let g:pymode_rope_completion_bind = '<C-Space>'
""map <C-s> <C-Space>
"let g:pymode_python = 'python3'
"let g:pymode_folding = 0
"let g:pymode_lint_on_write = 1
"let g:pymode_lint_cwindow = 1
"let g:pymode_lint = 1
"let g:pymode_lint_signs = 1

Plugin 'lervag/vimtex'
let g:vimtex_compiler_latexmk = {'callback' : 0}
let g:vimtex_fold_manual = 1
let g:vimtex_fold_enabled = 1


noremap <silent> <Leader>vs :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR
