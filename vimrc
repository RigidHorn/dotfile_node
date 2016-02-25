if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'nanotech/jellybeans.vim'

NeoBundle 'walm/jshint.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'digitaltoad/vim-pug'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'myhere/vim-nodejs-complete'
NeoBundle 'maksimr/vim-jsbeautify'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

set t_Co=256
colorscheme jellybeans

" vim-jsbeautify
map <Nul> :call JsBeautify()<cr>

" 全角スペース可視化.
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme       * call ZenkakuSpace()
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
  call ZenkakuSpace()
endif

set number
set ambiwidth=double
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=0
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set nrformats-=octal
set history=50
set virtualedit=block
