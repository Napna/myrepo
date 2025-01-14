set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
" required!-
" My Bundles here:
Plugin 'gmarik/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'Yggdroot/indentLine'
"Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on " required!

" NERD Tree setting
" <leader> == \
nmap <leader>t :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

" Airline setting
set laststatus=2
let g:airline#extensions#tabline#enabled = 1 "버퍼 목록 켜기
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" 파일명만 출력
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_highlighting_cache = 1

let g:airline_powerline_fonts = 1
let g:airline_theme= 'tomorrow'
"let g:airline_section_y = ''
"let g:airline_section_warning= '' "마지막 status창 사용 안함
" 버퍼 목록 켜기
" 이 옵션은 버퍼를 수정한 직후 버퍼를 감춰지도록 한다.
" 이 방법으로 버퍼를 사용하려면 거의 필수다.
let g:airline#extension#tabline#buffer_nr_show=1
set hidden

" indentLine setting
let g:indentLine_char_list = ['|', '¦', '┆', '┊']



set nocompatible
set backspace=indent,eol,start

set number                " 행 번호 표시
set nowrap                " 하나의 줄을 줄바꿈 없이 한 행에 모두 표시
set tabstop=4             " '\t' 문자의 크기
set shiftwidth=4          " '>>'이나 '<<'의 들여쓰기 크기
set softtabstop=4         " Tab 키의 들여쓰기 크기
"set cindent               " C, C++, Java 등의 자동 들여쓰기
set encoding=UTF-8        " 파일 인코딩을 UTF-8로 설정
set guifont=D2Coding:h14  " GUI 폰트 설정
set hlsearch              " 검색어 하이라이트
set ruler                 " 하단에 커서의 위치 정보 등 표시
set showmatch             " 괄호 짝 하이라이트
set expandtab             " 공백탭

augroup highlight_word_under_the_cursor
	autocmd VimEnter * highlight WordHL guibg=gray24 ctermbg=darkgray
	autocmd CursorMoved * exe printf('match WordHL /\V\<%s\>/', escape(expand('<cword>'), '/\'))
augroup END

if has("syntax")
	syntax on
endif

if has("gui_running")
	autocmd GUIEnter * set guioptions=aegit
	autocmd GUIEnter * set lines=40 columns=150
	set background=dark
	colorscheme hybrid
else
	colorscheme desert
endif

autocmd InsertEnter * set cursorcolumn
autocmd InsertLeave * set nocursorcolumn
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline
"autocmd InsertEnter * set keymap=dvorak



map <F9> :set columns-=20<enter>
map <F10> :set columns+=20<enter>
map <F11> :set lines-=10<enter>
map <F12> :set lines+=10<enter>



map <C-Y> "+y
map <C-P> "+gP
nmap <Tab> gt
nmap <S-Tab> gT
