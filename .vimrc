" Debug-language-server
let g:node_client_debug = 1

" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
"
" Runtime path manipulation by pathogen.vim
execute pathogen#infect()

" Activate filetype detection
filetype plugin indent on

" Last window always have a status line
set laststatus=2

set autoindent
" Replace tabs with spaces
set expandtab
" Show line numbers
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


" Configuration for Async Lint Engine (ALE)
" Declare which linters to run
let g:ale_linters = {
\   'go': ['gopls'],
\}

" Don't work yet
let g:ale_c_build_dir_names = ['~/project/kics/tms/.build.clang', '~/project/kics/tms/fix_addr_configuration_index/.build.clang']

" This setting may be confused with setting `statusline` next...
let g:airline#extensions#ale#enabled = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

" Use `:AirlineExtensions` to view status of extensions.
"
" truncate long branch names
let g:airline#extensions#branch#displayed_head_limit = 30

" Commented in favour of `airline`
" set statusline+=%{FugitiveStatusline()}


" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
