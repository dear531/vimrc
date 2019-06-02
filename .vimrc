set nocompatible
"set columns=80
set tabstop=8
set ruler
set noexpandtab
set number
set ignorecase
set smartcase
set wrapmargin=15
"set cindent
set shiftwidth=8
set wrap
set nolinebreak
set modeline
"set modelines=5
syntax on
"inoremap <C-h> <Left>
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
inoremap <C-l> <Right>
"inoremap <C-E> <Esc>A
"inoremap <C-J> <Esc>o
imap <c-j> <Down>
imap <c-k> <Up>
imap <c-h> <left>
"imap <c-l> <Right>
set laststatus=2
set cmdheight=1
set showcmd
set backspace =indent,eol,start
"set incsearch "search inputing jump to result
"----------------------
"map Q gq
"set mouse=a "set mouse control effectivity
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

"if has("autocmd")
"  filetype plugin indent on
"  augroup vimrcEx
"  au!
"  autocmd FileType text setlocal textwidth=78
"  autocmd BufReadPost *
"    \ if line("'\"") > 0 && line("'\"") <= line("$") |
"    \   exe "normal g`\"" |
"    \ endif
"  augroup END
"else
"  set autoindent
"endif
"command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
"	 	\ | wincmd p | diffthis
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
set autochdir 
set tags=tags,/home/zhangly/zly/libxml2-2.6.23/tags
set tags+=/usr/include/openssl/tags
"set tags+=~/../linux-3.2/tags
"set tags+=~/../linux-source-2.6.32/tags
set tags+=/home/zhangly/work/libxml2-2.6.23/tags
set tags+=/usr/include/ucd-snmp/tags
set tags+=/usr/include/net-snmp/tags
set tags+=/home/zhangly/snmp/net-snmp-5.4.4/tags
set tags+=/home/zhangly/smartgrid/tags/V3.1.XR/tags
set noic
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1 
set fileencodings=utf8,gbk,gb2312
set encoding=utf8
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS+lS--extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS+lS --extra=+q .<CR><CR> :TlistUpdate<CR>
set tags+=./tags "add current directory's generated tags file
" 按下F3自动补全代码，注意该映射语句后不能有其他字符，包括tab；否则按下F3会自动补全一些乱码
imap <F3> <C-X><C-O>
" 按下F2根据头文件内关键字补全
imap <F2> <C-X><C-I>
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_ShowPrototypeInAbbr = 1 "show function prototype in popup window
