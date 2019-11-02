set nocompatible
filetype plugin on
let g:vimwiki_list = [{'path': '~/vimwiki/',
                          \ 'syntax': 'markdown', 'ext': '.md'}]
set incsearch		" show search results as you type
set history=1000	" Keep 1000 items in command history
set ruler		" Show the cursor position
set showcmd		" Show incomplete commands in the bottom when typing
set wildmenu		" Show menu when using tab completion
set scrolloff=5		" Show 5 lines above and below for context while editing
set hlsearch		" Highlight matches when searching
set lbr			" Don't wrap to a new line in the middle of a word
set number		" Turn on line numbering
set relativenumber
set hlsearch		" Highlight all search results

set backup		" Creates a backup of file before saving
"set bex=BACKUP_EXTENSION	" Set a backup extension instead of the
"default '~'


" Good for coding
set ai			" Set auto-indent; matches indentation of line above
set si			" Set smart-indent; good for writing C functions etc.
syntax on		" Turn on syntax highlighting
"set background=dark	" Make syntax highlighting look good with dark bg


"set ignorecase
"set smartcase   These two options may be useful.  smartcase ignores
"ignorecase if the search has uppercase letters in it
"enable the keyword matching plugin that comes by default with vim
runtime macros/matchit.vim
" Check out the Surround.vim plugin
