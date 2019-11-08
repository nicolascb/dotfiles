" Nicolas Barbosa ndevbarbosa@gmail.com
call plug#begin('~/.config/nvim/plugged')
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-commentary'
	Plug 'bling/vim-airline'
	Plug 'fatih/vim-go'
	Plug 'airblade/vim-gitgutter'
	Plug 'hexdigest/gounit-vim'
	Plug 'scrooloose/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'chriskempson/base16-vim'
call plug#end()

" Use base16-default-dark
set termguicolors
colorscheme base16-oceanicnext
" Enable syntax
syntax on
" Enable line numbers
set number
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" Set mapleader
let mapleader=","

" nerdtree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" esc in insert mode
inoremap kj <esc>

" esc in command mode
cnoremap kj <C-C>
" Note: In command mode mappings to esc run the command for some odd
" historical vi compatibility reason. We use the alternate method of
" existing which is Ctrl-C

set mmp=10000
set redrawtime=10000

" Set go options
let g:go_auto_type_info = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_declarations = 1
let g:go_fmt_command = "goimports"

" Execute go tests
autocmd FileType go nmap <leader>t  <Plug>(go-test)

" jump between errors in quickfix list
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
" go-coverage-tooggle
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

" Search and replace word under cursor using F4
nnoremap <F4> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i
" Shortcut for nohlsearch
nnoremap ,<space> :nohlsearch<CR>
" navigate
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
