set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set showcmd
set ruler
syntax on
colorscheme slate

set incsearch
set hlsearch
nohlsearch

set listchars+=tab:>-,trail:-
set autoindent

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" set mouse=a
if has('mouse')
  set mouse=a
endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
