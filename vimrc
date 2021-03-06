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
set fileencodings=utf8,gbk
set fileformat=unix
set ffs=unix,dos
set bs=2
set number
set laststatus=2
set statusline=%F%m%r%h%w\ [%{&ff}%{(&ft==\"\"?\"\":\",\".&ft)},%{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+BOM\":\"\").\"]\ \"}%=%04l/%L,%04v(%p%%)\ %{fugitive#statusline()}
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,moc_*,*.dylib,*.o,*.obj,*.exe,*.dll,*.lib,*.a,*.msi,*.pyc,*.pyo,*.wixobj,*.wixpdb,.DS_Store,.git*,.qmake.stash,node_modules

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd BufNewFile,BufRead *.wsgi set filetype=python
autocmd BufNewFile,BufRead *.as set filetype=actionscript
autocmd BufNewFile,BufRead *.qrc set filetype=xml
autocmd BufRead,BufNewFile *.wxs,*.wixobj,*.wxi set filetype=xml

map <silent><C-left> <C-T>
map <silent><C-right> <C-]>

let g:netrw_list_hide='.*/tmp/.*,.*\.so$,.*\.swp$,.*\.zip$,moc_.*,.*\.dylib$,.*\.o$,.*\.obj$,.*\.exe\**$,.*\.dll$,.*\.lib$,.*\.a$,.*\.msi$,.*\.pyc,.*\.pyo,.*\.wixobj$,.*\.wixpdb$,\.DS_Store,\.git.*,\.qmake\.stash'

let python_highlight_all=1

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal! g'\"" |
\ endif

if has("multi_byte")
	if &termencoding == ""
		let &termencoding = &encoding
	endif
	set encoding=utf-8
	setglobal fileencoding=utf-8
	set fileencodings=ucs-bom,utf-8,latin-1
endif

augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

execute pathogen#infect()
execute pathogen#helptags()

highlight ColorColumn ctermbg=lightgray ctermfg=black guibg=magenta guifg=yellow
autocmd BufReadPost * call matchadd('ColorColumn', '\%80v', 100)
autocmd WinEnter * call matchadd('ColorColumn', '\%80v', 100)

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_javascript_checkers = ['jsl']
let g:syntastic_java_checkers = []
let g:syntastic_less_checkers = []
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_balloons = 1
let g:syntastic_auto_jump=1
