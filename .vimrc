" Set up display
set number relativenumber
colorscheme pablo

" Configure behavior
set scrolloff=8
set clipboard=unnamedplus
set colorcolumn=80
set ignorecase
set smartcase
set incsearch
set hlsearch
set autoindent

" Set up tabs
set ts=4
set sw=4

" Set up mappings
let mapleader = " "
imap jj <Esc>

nmap <Leader>d :Ex<Cr>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv

vmap J :m '>+1<CR>gv=gv
vmap K :m '<-2<CR>gv=gv

tmap jj <C-\><C-n> 

nmap <C-J> <C-w>j
nmap <C-K> <C-w>k
nmap <C-H> <C-w>h
nmap <C-L> <C-w>l

nmap <leader>s :setlocal spell! spelllang=en_us<CR>
nmap <leader>w :set wrap!<CR>

" Tab things
nmap <Leader>tq :tabclose<CR>
nmap <Leader>to :tabonly<CR>
nmap <Leader>tm :tabmove<Space>
nmap <Leader>1 :tabnext 1<CR>
nmap <Leader>2 :tabnext 2<CR>
nmap <Leader>3 :tabnext 3<CR>
nmap <Leader>4 :tabnext 4<CR>
nmap <Leader>5 :tabnext 5<CR>
nmap <Leader>6 :tabnext 6<CR>
nmap <Leader>7 :tabnext 7<CR>
nmap <Leader>8 :tabnext 8<CR>
nmap <Leader>9 :tabnext 9<CR>
nmap <Leader>th :tabprev<CR>
nmap <Leader>tl :tabnext<CR>
nmap <Leader>tt :tabnew<CR>
nmap <Leader>tn :tabnew<CR>
nmap <Leader>tp <C-Tab>
