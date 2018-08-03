set nocp
set number
set hlsearch
set incsearch
set autowrite
set switchbuf=useopen

" set laststatus=2 " last window always has a statusline

filetype indent on
syntax on

" set shiftwidth=4
" set ignorecase - this is for autocompletion

let g:netrw_banner=1
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize=25
let g:netrw_altv=1

" https://vi.stackexchange.com/questions/7889/cannot-exit-vim-even-using-q
" to delete netrw's buffer once it's hidden
" autocmd FileType netrw setl bufhidden=delete
