" Runtime path manipulation by pathogen.vim
execute pathogen#infect()

" Activate filetype detection
filetype plugin indent on

" Last window always have a status line
set laststatus=2

set autoindent
" Replace tabs with spaces
set expandtab
set number
set shiftwidth=4 softtabstop=4
syntax on

" Highlight searching
set hlsearch
" Search as characters are entered
set incsearch
    
" Don't save hidden and unloaded buffers in sessions.
set sessionoptions-=buffers


" Include my local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif


" TODO: what does it mean?
au TabLeave * let g:lasttab = tabpagenr()


" Format settings
autocmd BufNewFile,BufRead *.cpp set formatprg=astyle\ -s4pA1
autocmd BufNewFile,BufRead *.c set formatprg=astyle\ -s4pA1
autocmd BufNewFile,BufRead *.cxx set formatprg=astyle\ -s4pA1
autocmd BufNewFile,BufRead *.h set formatprg=astyle\ -s4pA1
autocmd BufNewFile,BufRead *.hpp set formatprg=astyle\ -s4pA1

" control row width
highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%>100v.\+/


" configure path to use gf command
let &path.="/usr/include/sys,/usr/include/AL"


" Place here settings for plugins which have to be here, not in .vimrc.local
" (in the latter file there're settings which absent in .vimrc provided by
" vim-bootstrap)
"
"if exists("*fugitive#statusline")
"  set statusline+=%{fugitive#statusline()}
"endif
set statusline+=%{FugitiveStatusline()}
