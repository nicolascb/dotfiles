call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
Plug 'buoto/gotests-vim'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
Plug 'nicolascb/camarada.vim'
   
if isdirectory('/usr/local/opt/fzf')
   Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
   Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
   Plug 'junegunn/fzf.vim'
endif
call plug#end()

filetype plugin indent on

colorscheme camarada_light

" change colorscheme by time
let hourNow = strftime("%H")
if hourNow > 17 || hourNow < 7
    colorscheme camarada_dark
endif

syntax on
set ruler
set number
set cursorline
set backspace=indent,eol,start
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase

let mapleader=','
nnoremap n nzzzv
nnoremap N Nzzzv

" clear search
nnoremap <silent> <leader><space> :noh<cr>

" switch windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

" tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

" set working directory
nnoremap <leader>. :lcd %:p:h<CR>

" tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 0

" copy/paste visual mode macos
if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

" go
let g:gotests_bin = '/Users/nicolascorreabarbosa/go/bin/gotests'
let g:go_metalinter_autosave = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1
let g:go_list_type = 'locationlist'

" fzf
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR> 

" YCM
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
nmap <leader>d <plug>(YCMHover)

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

" commands
command! FixWhitespace :%s/\s\+$//e

let s:darkmode = 0
function! BgToggle()
    if s:darkmode
        execute 'set background=light'
        execute 'colorscheme camarada_light' 
        let s:darkmode = 0
        return
    endif        
    
    execute 'set background=dark'
    execute 'colorscheme camarada_dark' 
    let s:darkmode = 1
endfunction

nnoremap <F9> :call BgToggle()<CR>
