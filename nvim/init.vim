set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set number
" For Neovim 0.1.3 and 0.1.4
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"
 " Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
  set termguicolors
endif

call plug#begin('~/.config/nvim/plugged')
	Plug 'https://github.com/joshdick/onedark.vim.git'
	Plug 'https://github.com/mhartington/oceanic-next.git'
	Plug 'tpope/vim-commentary'
	Plug 'bling/vim-airline'
	Plug 'fatih/vim-go'
	Plug 'airblade/vim-gitgutter'
	Plug 'hexdigest/gounit-vim'
	Plug 'Valloric/YouCompleteMe'
call plug#end()

colorscheme onedark
set backspace=indent,eol,start
set history=1000
set ruler
set showcmd
set autoindent
set showmatch
set nowrap

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

