set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set number

call plug#begin('~/.config/nvim/plugged')
	Plug 'https://github.com/joshdick/onedark.vim.git'
	Plug 'https://github.com/tpope/vim-fugitive.git'
	Plug 'tpope/vim-commentary'
	Plug 'bling/vim-airline'
	Plug 'fatih/vim-go'
	Plug 'airblade/vim-gitgutter'
	Plug 'hexdigest/gounit-vim'
	Plug 'scrooloose/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

" nerdtree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

colorscheme onedark 
set background=dark
set mmp=10000
set termguicolors
set backspace=indent,eol,start
set redrawtime=10000
set history=1000
set ruler
set showcmd
set autoindent
set showmatch
set nowrap
set statusline=%{FugitiveStatusline()}

" Display extra whitespace
set list listchars=tab:»·,trail:·

" gotags
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

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
let g:golang_goroot = "/home/nicolas.correa/src/Dinamize-Go"

" Search and replace word under cursor using F4
nnoremap <F4> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i

" navigate
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
