runtime bundle/vim-pathogen/autoload/pathogen.vim

syntax on
filetype plugin indent on

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
set fileformat=unix
set ffs=unix,dos
set bs=2
set number
set laststatus=2
set statusline=%F%m%r%h%w\ [%{&ff}%{(&ft==\"\"?\"\":\",\".&ft)},%{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+BOM\":\"\").\"]\ \"}%=%04l/%L,%04v(%p%%)\ %{fugitive#statusline()}
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,moc_*,*.dylib,*.o,*.obj,*.exe,*.dll,*.lib,*.a,*.msi,*.pyc,*.pyo,*.wixobj,*.wixpdb

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd BufNewFile,BufRead *.wsgi set filetype=python
autocmd BufNewFile,BufRead *.as set filetype=actionscript
autocmd BufNewFile,BufRead *.qrc set filetype=xml
autocmd BufRead,BufNewFile *.wxs,*.wixobj,*.wxi set filetype=xml

map <silent><C-left> <C-T>
map <silent><C-right> <C-]>

let python_highlight_all=1

let g:netrw_list_hide='.*/tmp/.*,.*\.so$,.*\.swp$,.*\.zip$,moc_.*,.*\.dylib$,.*\.o$,.*\.obj$,.*\.exe\**$,.*\.dll$,.*\.lib$,.*\.a$,.*\.msi$,.*\.pyc,.*\.pyo,.*\.wixobj$,.*\.wixpdb$'

if has("multi_byte")
	if &termencoding == ""
		let &termencoding = &encoding
	endif
	set encoding=utf-8
	setglobal fileencoding=utf-8
	set fileencodings=ucs-bom,utf-8,latin-1
endif

execute pathogen#infect()
execute pathogen#helptags()
