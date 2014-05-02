runtime bundle/vim-pathogen/autoload/pathogen.vim

syntax on
set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set autowrite
set hidden
set modeline
set autoread
set colorcolumn=80
set fileencodings=utf8,gbk
filetype plugin indent on

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd BufNewFile,BufRead *.wsgi set filetype=python
autocmd BufNewFile,BufRead *.as set filetype=actionscript
autocmd BufNewFile,BufRead *.qrc set filetype=xml

map <silent><C-left> <C-T>
map <silent><C-right> <C-]>

set number
set statusline=%F%m%r%h%w\ [%{&ff}%{(&ft==\"\"?\"\":\",\".&ft)},%{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+BOM\":\"\").\"]\ \"}%=%04l/%L,%04v(%p%%)\ %{fugitive#statusline()}

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,moc_*,*.dylib,*.o

let python_highlight_all=1

execute pathogen#infect()
execute pathogen#helptags()
