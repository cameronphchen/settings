"Chimat's vimrc

" General Settings

set nocompatible	" not compatible with the old-fashion vi mode
set bs=2		" allow backspacing over everything in insert mode
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set autoread		" auto read when file is changed from outside
set number
set colorcolumn=80
set autoindent          " auto indent
filetype plugin indent on

colorscheme darkblue

syntax on
if has("gui_running")
     " See ~/.gvimrc
     set lines=50       " height = 50 lines
     set columns=88        " width = 100 columns
     set selectmode=mouse,key,cmd
else
     colorscheme elflord    " use this color scheme
     set background=dark        " adapt colors for background
endif

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

" TAB setting{
   set expandtab        "replace <TAB> with spaces
   set softtabstop=4 
   set shiftwidth=4 

"}   

" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

