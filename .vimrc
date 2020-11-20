" /usr/share/vim/vim72/colors

" :help F13
" :%s/^I/  /gc                    replace \t with 2 spaces (Ctrl-V Ctrl-I) - vi
" :%s/^M//g                       remove  \r               (Ctrl-V Ctrl-M)

" :[range]s/pattern/string/flags  replace pattern with string according to flags (g,c,i)

" :digraphs                       show currently defined digraphs (dec 0-255)

" v (visual) mode, select lines, then :sort


let c_comment_strings=1
let mapleader = ","

map \e[3~ x
map ^H X

map <silent> ; :set invhlsearch<CR>
map <silent> <PageUp> <C-U><C-U>
map <silent> <PageDown> <C-D><C-D>
map <silent> <C-PageUp> 1G
map <silent> <C-PageDown> G

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  <F1>  - Open file (unix)
"  <F2>  - Save file
"  <F3>  - Save as file
"  <F4>  - Quit

"  <F5>  - Show non-printing chars
"  <F6>  - Show all options
"  <F7>  - Set File format (unix,dos)
"  <F8>  - Join current line with line below

"  <F9>  - Search / Replace (disable magic mode)
"  <F10> - Toggle case
"  <F11> - Replace tabs with spaces
"  <F12> - Remove trailing whitespace

map <F1> :e ++ff=unix 
map <F2> :w<CR>
map <F3> :w 
map <F4> :q!<CR>

map <silent> <F5> :set invlist<CR>
map <silent> <F6> :se<CR>
map <F7> :set fileformat=
map <silent> <F8> gJ

map <F9> :.,$sno/
map <silent> <F10> <S-~>
map <silent> <F11> :%s/\t/  /g<CR>
map <silent> <F12> :%s/\s\+$//g<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set bs=2
set cindent
set expandtab
set foldminlines=99999
set hlsearch
set laststatus=2
set mouse-=a
set mousehide
set nocompatible
set nowrap
set nowrapscan
set ruler
set shiftwidth=2
set showmatch
set showmode
set statusline=%t\ [%l:%c]\ [%{&ff}]\ %r
set t_kD=^?
set tabstop=2
set tw=0
set uc=0

" :set diffopt+= iwhite icase
if &diff
  syntax off
  hi statusline ctermfg=blue ctermbg=white
  nnoremap <Tab> <C-W><C-W>
  nnoremap <Leader><Down> ]czz
  nnoremap <Leader><Up> [czz
  nnoremap <Leader>g do
  nnoremap <Leader>p dp
  nnoremap <silent> <Leader>u :diffupdate<CR>
else
  syntax on
  hi statusline term=reverse cterm=reverse
endif

" navigation within vim help
nnoremap <Leader><Right> <C-]>
nnoremap <Leader><Left> <C-t>

" Color for xiterm, rxvt, nxterm, color-xterm :
if has("terminfo")
  set t_Co=8
  set t_Sf=\e[3%p1%dm
  set t_Sb=\e[4%p1%dm
else
  set t_Co=8
  set t_Sf=\e[3%dm
  set t_Sb=\e[4%dm
endif

