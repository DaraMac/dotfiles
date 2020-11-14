set nocp
set number
set hlsearch
set incsearch
set autowrite
set switchbuf=useopen

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

" https://stackoverflow.com/questions/5017500/vim-difficulty-setting-up-ctags-source-in-subdirectories-dont-see-tags-file-i
set tags=./tags;/

" https://wiki.sagemath.org/Tips
" to get sagemath highlighting working
augroup filetypedetect
  au! BufRead,BufNewFile *.sage,*.spyx,*.pyx setfiletype python
augroup END
