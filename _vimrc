"_vimrc file

"""Settings"""

"Compiling:"
"C++ files
autocmd Filetype cpp nnoremap <buffer> <c-space> :!g++ *.cpp -o %< && %<.exe<cr>

"Statusline:"
":so $VIMRUNTIME/syntax/hitest.vim to see available highlight groups
set statusline=%#DiffAdd#\ %t\ %m\ %#Folded#\ %F%=%y\ %{&fileencoding?&fileencoding:&encoding}\[%{&fileformat}\]\ %p%%\ 
"Always show statusline
set laststatus=2

"Autocomplete:"
"Limits pop-up menu to 8 items
set pumheight=8
"Auto insert longest common text of all matches
"Show popup menu even with only one match
set completeopt=longest,menu
"Specify location of ctags file
"set tags+=C:\Users\User\Desktop\tags

"Sessions:"
"Autosave session upon leaving vim
autocmd VimLeave * mks! ~\Desktop\Files\session.vim

"Preferences:"
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
colorscheme habamax
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
"Change working directory
cd C:\Users\User\Desktop\Files

"""Plugins"""

"Installed:"

call plug#begin()

" List your plugins here
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs' | Plug 'sheerun/vim-polyglot'
Plug 'mg979/vim-visual-multi'
Plug 'romainl/vim-cool'
Plug 'vimwiki/vimwiki'

call plug#end()

"Configurations:"

"Change fzf layout
let g:fzf_vim = {}
let g:fzf_vim.preview_window = []
let g:fzf_layout = { 'down':  '20%'}

"Open preview in a new window
function! OpenMarkdownPreview(url)
	  execute "silent ! start firefox --new-window " . a:url
endfunction
let g:mkdp_browserfunc = 'OpenMarkdownPreview'
"Keep previews of different files on one window
let g:mkdp_combine_preview = 1

"Vimwiki
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': 'md'}]
let g:vimwiki_global_ext = 0

"""Mappings"""

"Noremap means non-recursive
"map remaps in normal, visual, select & operator-pending
"! apply to insert & command-line only

"Leader:"

"Leader key
nnoremap <s> <nop>
let mapleader="s"

"Plugin:"

"unbind easymotion leaderkey
map <nop> <Plug>(easymotion-prefix)
"<c-p> unused
nnoremap <silent> <c-p> :Files ~\Desktop\Files<cr>
"s substitute character and text
nmap <leader>f <Plug>(easymotion-s2)
nmap <leader>d <Plug>(easymotion-bd-w)
nmap <leader>j <Plug>(easymotion-j)
nmap <leader>k <Plug>(easymotion-k)
"<c-/> ?
map! <c-/> gcc
nmap <c-/> gcc
vmap <c-/> gc
"open markdown preview
nnoremap <leader>m <Plug>MarkdownPreview
"nnoremap <nop> <Plug>VimwikiIndex
nnoremap <leader>ww :new \| :VimwikiIndex<cr>

"Normal:"

noremap! kj <esc>
noremap! jk <esc>

"open commandline
noremap <space> :
"<c-j> unused
noremap <silent> <c-j> :term<cr>
"<c-bs> unused
cnoremap <c-bs> <c-w>
inoremap <c-bs> <c-w>
"<s-d> remove till end of line
nnoremap D dd
vnoremap D x
"<c-z> open shell
noremap <c-z> u
"open line above/below in normal mode
nnoremap <cr> o<esc>
"Q switch to "Ex" mode
nnoremap Q @q
"<c-q> unused
nnoremap <c-q> :q<cr>
"switch windows
nnoremap <s-space> <c-w>w

"Standard Editor:"

"<c-a> increment number
noremap <c-a> ggVG
"<c-s> unused
noremap <c-s> :w<cr>
"<c-c> interrupt process
vnoremap <c-c> y
nnoremap <c-c> yy
"<c-v> visual block mode
nnoremap <c-v> p
inoremap <c-v> <c-o>p
