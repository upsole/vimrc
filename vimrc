"File & System Opts
set clipboard=unnamedplus
set nobackup
set noswapfile
set updatetime=1000
set undofile 
set path=** "allows for fuzzy search through :f
set nowritebackup

"Display
filetype plugin on
syntax on
set wildmenu
set noruler
set scrolloff=8
set incsearch "Incremental Search
set hlsearch
hi CursorLine cterm=none ctermbg=237
hi clear CursorColumn
hi link CursorColumn CursorLine 
hi LineNR cterm=none ctermfg=238
hi CursorLineNR cterm=bold ctermfg=white ctermbg=237
hi ColorColumn ctermbg=white cterm=none ctermfg=black

"Real Tabs
set autoindent
set noexpandtab
set shiftwidth=4
set tabstop=4

"Maps
let mapleader = " "
let maplocalleader = " "
		"Matching
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
		"Do not replace yank after pasting
vnoremap p "_dP 
		"L,R, List and Search Buffer
nnoremap H :bp!<CR>
nnoremap L :bn!<CR>
nnoremap <C-w> :bd!<CR>
nnoremap <leader>fl :ls
nnoremap <leader>fb :b 
		"Fuzzy Search
nnoremap <leader>ff :find 

		"Jump to .vimrc
nnoremap <leader>nv :e $HOME/.vimrc<CR>

"WindowNav
set splitbelow
set splitright
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-o> <C-w>q
nnoremap <C-Up> :resize +2<CR>
nnoremap <C-Down> :resize -2<CR>
nnoremap <C-Left> :vertical resize +2<CR>
nnoremap <C-Right> :vertical resize +2<CR>

"File Explorer
nnoremap <leader>e :vsplit<CR> :edit .<CR>
let g:netrw_banner=0
let g:netrw_browser_split=4 " prior window
let g:netrw_altv=1
let g:netrw_liststyle=3 " tree
let g:netrw_list_hide=netrw_gitignore#Hide()

"Snips
"nnoremap ,html :-1read $HOME/.vim/snips/html5.html<CR>
"nnoremap ,main :-1read $HOME/.vim/snips/main.c<CR>

" Autocmds & Toggles set/unset
nnoremap <leader>sc :set colorcolumn=80<CR>
nnoremap <leader>sb :set laststatus=2<CR>
nnoremap <leader>sC :set cursorcolumn<CR>
nnoremap <leader>sl :set nu<CR> :set relativenumber<CR> :set numberwidth=2<CR> :set cursorline<CR> :set nowrap<CR> :set laststatus=2<CR> :set ruler<CR>	
nnoremap <leader>uc :set colorcolumn=0<CR>
nnoremap <leader>ub :set laststatus=1<CR>
nnoremap <leader>ul :set nocursorline<CR> :set nonu<CR> :set norelativenumber<CR> :set nocursorline<CR> :set wrap<CR> :set laststatus=1<CR> :set noruler<CR>
nnoremap <leader>uC :set nocursorcolumn<CR>
nnoremap <leader>uh :nohl<CR>
augroup CODE
	autocmd!
	autocmd FileType c,python,sh,lua set colorcolumn=80
	autocmd FileType c,python,sh,lua set laststatus=2
	autocmd FileType c,python,sh,lua set nu "Line Column
	autocmd	FileType c,python,sh,lua set cursorline
	autocmd FIleType c,python,sh,lua set relativenumber 
	autocmd FIleType c,python,sh,lua set numberwidth=2
	autocmd FileType c,python,sh,lua set nowrap
	autocmd FileType c,python,sh,lua set ruler
	autocmd FileType c,python,sh,lua inoremap ' ''<ESC>i
augroup END
