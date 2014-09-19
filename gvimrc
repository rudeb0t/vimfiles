let g:zenburn_high_Contrast = 1
colorscheme zenburn
set background=dark
unmenu ToolBar
unmenu! ToolBar
set cursorline
if has('mac')
  set guifont=Source\ Code\ Pro:h14,Monaco:h12
endif

if has('win32')
   set guifont=Consolas:h10
endif
