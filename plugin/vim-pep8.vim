"   Indentation is great.
"-----------------------------------------------------------------------
" set smartindent
" filetype indent on

" Fold based on indentation level.
set foldmethod=indent
" Expand all by default.
set foldlevel=20

" Do not add line breaks into newly entered text.
set wrapmargin=0
set textwidth=0

" :map <Leader>pv :!w3m http://192.168.1.9/scripts<Cr> 
:map <Leader>pr :!python % 

" Check in all the things!!
" map <F3> :!vn ci %:r.*
map <F3> :!git commit -a
" Install!
map <F4> :!make install
" Run!
map <F5> :!python %:r.py

map <Leader>pd :!pydoc %:r<Cr>

map <Leader>pl :!pylint % > /tmp/out.txt<Cr>:e /tmp/out.txt<Cr>

map <F2> :e %:r.pylint <bar> :read !pylint %:r.py
:map <Leader>pn :set nu!

" --------------------------
"
"	Settings for Python files
"
" --------------------------


" Automatically highlight lines over 80 characters.
"    in Python files.
" Find lines that are too long
" au FileType python let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
" au BufWinEnter *.py let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
" Color lines that are too long them red.
" au FileType python let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
" au BufWinEnter *.py let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

highlight ColorColumn ctermbg=magenta
au FileType python call matchadd('ColorColumn', '\%81v', 100)

" Show line numbers
au Filetype python setlocal number
" PEP8
au FileType python setlocal expandtab
au FileType python setlocal tabstop=4
au FileType python setlocal shiftwidth=4

" Never wrap lines...
au FileType python setlocal textwidth=0

" Do not set paste for Python files...
au FileType python setlocal nopaste

" Enable OnmiComplete for Python 
" -------------------------------------------------------
autocmd FileType python set omnifunc=pythoncomplete#Complete

" Use short tabs for text documents 
set tabstop=4 
set shiftwidth=4

" Always show tabs, trailing spaces."
set listchars=tab:>~,nbsp:_,trail:.
set list

