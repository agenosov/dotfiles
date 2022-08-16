" Install vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" Setting up plugins 
call plug#begin()
" Session management
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
" FS explorer
Plug 'preservim/nerdtree'
" Git support
Plug 'tpope/vim-fugitive'
" Wrapper for grep-like utility `ack`
" Shorthand 'mileszs/ack' doesn't work...
Plug 'https://github.com/mileszs/ack.vim'
" Async lint engine (is it worth having with coc.nvim?)
Plug 'dense-analysis/ale'
" Fuzzy search
Plug 'ctrlpvim/ctrlp'
" Golang support
Plug 'fatih/vim-go'
" Advanced status line
Plug 'vim-airline/vim-airline'
" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Terminal in a popup window
Plug 'voldikss/vim-floaterm'
" C++ syntax highlighting
Plug 'jackguo380/vim-lsp-cxx-highlight'
call plug#end()

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
