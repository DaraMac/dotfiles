set nocp
set number relativenumber
set hlsearch
set incsearch
set autowrite
set switchbuf=useopen

" so I can switch between buffers without having to save manually
" https://stackoverflow.com/q/34463800 from the comments here
set hidden

set linebreak
set display=lastline

filetype indent on
syntax on

" https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

set ignorecase 
set smartcase

" https://shapeshed.com/vim-netrw/#removing-the-banner
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize=25
let g:netrw_altv=1

" https://vi.stackexchange.com/questions/7889/cannot-exit-vim-even-using-q
" to delete netrw's buffer once it's hidden
autocmd FileType netrw setl bufhidden=delete

autocmd FileType make setl noexpandtab

" https://stackoverflow.com/questions/5017500/vim-difficulty-setting-up-ctags-source-in-subdirectories-dont-see-tags-file-i
set tags+=./.tags;/

" https://unix.stackexchange.com/a/363374
" to make colours work properly when in tmux
set background=dark
