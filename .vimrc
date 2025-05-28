"_vimrc file

"""Settings"""

"Working directory:"

"Change working directory
cd C:\Users\User\Desktop\Files

"Preferences:"

"Always show statusline
set laststatus=2
"Limits pop-up menu to 8 items
set pumheight=8
"Auto insert longest common text of all matches
"Show popup menu even with only one match
set completeopt=longest,menu
"Ignore cases when searching
set ignorecase
"Hide buffers instead of needing to save
set hidden
"Disable swapfiles
set noswapfile
"Auto save
set autowriteall
"Annoying windows beep sound
set belloff=all
"Show cursor line
set cursorline
"Fix backspace on windows
set bs=2
"Show line numbers
set nu
"Highlight text while searching
set incsearch
"Higlight text after searching
set hlsearch
"Enhanced command line completion
set wildmenu
"Expand longest and full list view, then cycle through
set wildmode=longest:full,full
"Disable line wrapping:
set nowrap
"Set theme
set termguicolors
colorscheme morning
"Store undo information after exiting vim
set undodir=~\.vim\undodir
set undofile
"Disable auto-inserting comments with o or O
au BufEnter * set fo-=o
au BufEnter * set fo-=r
"Fix indenting
set tabstop=2 shiftwidth=2
"Set directory to that of current file
set autochdir
"Add <> to the list of pairs matched by the % command
set matchpairs+=<:>

"""Plugins"""

"Installed:"

call plug#begin()

" List your plugins here
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs' | Plug 'sheerun/vim-polyglot'
Plug 'romainl/vim-cool'

call plug#end()

"Configurations:"

"Change fzf layout
let g:fzf_vim = {}
let g:fzf_vim.preview_window = []
let g:fzf_layout = { 'down':  '20%'}

"""Mappings"""

"Noremap means non-recursive
"map remaps in normal, visual, select & operator-pending
"! apply to insert & command-line only

"Leader:"

"nnoremap <s> <nop>
"let mapleader="s"

"Plugin:"

"<c-p> unused
nnoremap <silent> <c-p> :Files ~\Desktop\Files<cr>
"<c-/> ?
map! <c-/> gcc
nmap <c-/> gcc
vmap <c-/> gc

"Normal:"

noremap! kj <esc>

"open commandline
noremap <space> :
"<c-j> unused
noremap <silent> <c-j> <c-z>
"<c-bs> unused
cnoremap <c-bs> <c-w>
inoremap <c-bs> <c-w>
"<s-d> remove till end of line
nnoremap D dd
vnoremap D x
"open line above/below in normal mode
nnoremap <cr> o<esc>
"Q switch to "Ex" mode
nnoremap Q @q
"<c-\> 
nnoremap <c-\> <c-w>v:bn<cr><c-w>l

"Standard Editor:"

"<c-a> increment number
noremap <c-a> ggVG
"<c-s> unused
noremap <c-s> :w<cr>
"<c-c> interrupt process
vnoremap <c-c> "*y
"<c-n> unused
noremap <c-n> :enew<cr>

"Unbinded: "

"<c-v> visual block mode
"<c-q> unused
noremap <c-z> u