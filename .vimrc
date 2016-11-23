set number
set laststatus=2
set showmatch
set nocompatible
set number
set laststatus=2
set showmatch
set cursorline
set showtabline=1
syntax on

set statusline=%{expand('%:p:t')}\ %<\(%{SnipMid(expand('%:p:h'),80-len(expand('%:p:t')),'...')}\)%=\ encoding=%{&fileencoding}/%{&ff},\ [%l/%L]

function! SnipMid(str, len, mask)
    if a:len >= len(a:str)
        return a:str
    elseif a:len <= len(a:mask)
        return a:mask
    endif
    let len_head = (a:len - len(a:mask)) / 2
    let len_tail = a:len - len(a:mask) - len_head
    return (len_head > 0 ? a:str[: len_head - 1] : '') . a:mask . (len_tail > 0 ? a:str[-len_tail :] : '')
endfunction

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,ucs-2,cp932,sjis
set fileformat=unix
set cmdheight=1
set showcmd
set wildmenu
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set ignorecase
set smartcase
set nowrapscan
set incsearch
set visualbell
set backspace=indent,eol,start
set autoindent

filetype on
autocmd BufNewFile,BufRead *.xml set nowrap tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.dicon set nowrap tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.html set nowrap tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.css set nowrap tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.js set nowrap tabstop=2 shiftwidth=2 expandtab
autocmd BufNewFile,BufRead *.php set nowrap tabstop=2 shiftwidth=2 expandtab
autocmd BufNewFile,BufRead *.swift set filetype=swift nowrap tabstop=2 shiftwidth=2 expandtab

noremap ;rn :set relativenumber<CR>
