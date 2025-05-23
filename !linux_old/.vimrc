"Change default vim key
"imap jj <Esc>

"Use syntax highlighting
syntax on

"Use vim instead of vi
set nocompatible
"Always display statusline(doesn't show by default)
set laststatus=2

"Set indent size 
set tabstop=2 softtabstop=2
"Set indent size when using >>
set shiftwidth=2
"Ensure indent size behaves normally
set expandtab

"Auto-indenting
set smartindent
"Show line numbers
set nu
"Display only part of a line when wrapping
set nowrap
"Immediately delete backup file upon writing 
set nobackup

"Not sure if this works ***
"Store undo information after exiting vim
set undodir=~/.vim/undodir
set undofile
"Highlight text while searching with /
set incsearch

"""Disabled"""
"Show relative line number
"set relativenumber
"Show line below cursor
"set cursorline

"Other
set noerrorbells

"Set a theme
set termguicolors
colorscheme slate

