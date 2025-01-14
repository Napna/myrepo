" /user/kimjh1215/.vimrc
" VIM Setting
" kimjh1215

" Plugin Setting
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
" required!-
" My Bundles here:
Plugin 'gmarik/Vundle.vim'                " Enables Vim plugins
Plugin 'The-NERD-tree'                    " A file explorer in Vim
Plugin 'vim-airline/vim-airline'          " Customizes Vim UIs
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'               " Displays git infomations
"Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on " required!

" NERD Tree Setting
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
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline_highlighting_cache=1
let g:airline_powerline_fonts=1
"let g:airline_theme='minimalist'
let g:airline_theme='tomorrow'
"let g:airline_section_y = ''
"let g:airline_section_warning=''
let g:airline#extensions#tabline#buffer_nr_show=1

set hidden

" Base setting
set number					" Display line number
set nowrap					" Display a line on a row
set tabstop=4				" The size of '\t'
set shiftwidth=4			" The size of auto intent by >> or <<
set softtabstop=4			" The size of TAB key
set cindent					" An auto indent for C, C++, JAVA ...
set expandtab               " Tab key \t -> whitespace

set encoding=UTF-8			" set Encoding Method

" Word Highlighting
augroup word_highlight
	autocmd VimEnter * hi WordHL guibg=gray30 ctermbg=darkgray ctermfg=black " auto enable
	autocmd CursorMoved * exe printf('match WordHL /\V\<%s\>/', escape(expand('<cword>'), '/\'))
augroup END

"function! WordHighlightEnable()
"	augroup word_highlight
"		highlight WordHL guibg=gray30 ctermbg=darkgray ctermfg=black
"		autocmd CursorMoved * exe printf('match WordHL /\V\<%s\>/', escape(expand('<cword>'), '/\'))
"	augroup END
"endfunction
"
"function! WordHighlightDisable()
"	augroup! word_highlight
"endfunction

if has("gui_running")							" GUI Setting
	set background=dark
	colo hybrid
	autocmd GUIEnter * set guioptions=aegit    "
	autocmd GUIEnter * set lines=55 columns=115	" VIM size
"	autocmd GUIEnter * winpos 1000 250			" Default GUI Coordinates
	autocmd GUIEnter * highlight IndentHighlight guibg=gray9
	autocmd GUIEnter * 2match IndentHighlight /^\(    \)\+/
else
	colo desert
endif


" Set Fonts - must be installed in ~/.fonts
set guifont=D2Coding\ 15			" Default
"set guifont=Elice\ DigitalCoding\ ver.H\ 12
"set guifont=ComicMono\ 13

" When enter to InsertMode, enable cursor highlight
autocmd InsertEnter * set cursorcolumn
autocmd InsertLeave * set nocursorcolumn
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline


"augroup select_runner
"	autocmd BufEnter *.java   nmap <C-CR> :!java %<CR>
"	autocmd BufEnter *.py     nmap <C-CR> :!py %<CR>
"	autocmd BufEnter *.c      nmap <C-CR> :!cpp %<CR>
"	autocmd BufEnter *.cpp    nmap <C-CR> :!cpp %<CR>
"	autocmd BufEnter *.tcl*   nmap <C-CR> :!tclsh %<CR>
"	autocmd BufEnter *.csh    nmap <C-CR> :!csh %<CR>
"	autocmd BufEnter *.sh     nmap <C-CR> :!sh %<CR>
"augroup END
"	
"augroup select_runner_with_input_file
"	autocmd BufEnter *.java   nmap <C-A-CR> :!java % < input.txt<CR>
"	autocmd BufEnter *.py     nmap <C-A-CR> :!py % < input.txt<CR>
"	autocmd BufEnter *.c      nmap <C-A-CR> :!a.exe < input.txt<CR>
"	autocmd BufEnter *.cpp    nmap <C-A-CR> :!a.exe < input.txt<CR>
"	autocmd BufEnter *.tcl*   nmap <C-A-CR> :!tclsh % < input.txt<CR>
"	autocmd BufEnter *.csh    nmap <C-A-CR> :!csh % < input.txt<CR>
"	autocmd BufEnter *.sh     nmap <C-A-CR> :!sh % < input.txt<CR>
"augroup END


" BindKeys
map <F2> :%s@{\?"\([A-z0-9/]\+\)"[},] \?@\1\r@g<enter>

map <F9> :set columns-=20<enter>
map <F10> :set columns+=20<enter>
map <F11> :set lines-=10<enter>
map <F12> :set lines+=10<enter>
map <C-P> "+gP
imap <C-P> <Esc>"+gP
nmap <Tab> gt
nmap <C-Tab> gT


" Using Specific keywords
inoreabbrev		_iostream    #include <iostream>
inoreabbrev		_stdio       #include <stdio.h>
inoreabbrev		_stdlib      #include <stdlib.h>
inoreabbrev		_std         using namespace std;
inoreabbrev		_main        int main()<CR>{<CR>}<Up><Right>
inoreabbrev		_csh         #!/bin/csh -f
inoreabbrev		_sh          #!/bin/sh
inoreabbrev		_bash        #!/bin/bash
inoreabbrev		_py          #!/user/kimjh1215/miniconda3/bin/python
inoreabbrev		_tcl         #!/user/kimjh1215/tools/tcl/tcl8.6.14/unix/tclsh



cmap W<CR> w<CR>
cmap Q<CR> q<CR>
cmap wQ<CR> wq<CR>
cmap Wq<CR> wq<CR>
cmap WQ<CR> wq<CR>
cmap W<S-CR> w<CR>
cmap Q<S-CR> q<CR>
cmap wQ<S-CR> wq<CR>
cmap Wq<S-CR> wq<CR>
cmap WQ<S-CR> wq<CR>


if has("syntax")
	syntax on
endif
