"Author: Arunav Dey; github.com/ArunavDey
"Description: .vimrc Config File
"Date: 23-06-2022


"########## PLUGINS ##########
call plug#begin()

"##### GENERAL PLUGINS #####
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-commentary'
Plug 'preservim/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'sbdchd/neoformat'
Plug 'luochen1990/rainbow'
" Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

"##### COLOR SCHEMES #####
Plug 'tomasr/molokai'
Plug 'jacoborus/tender.vim'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'andreasvc/vim-256noir'
Plug 'artanikin/vim-synthwave84'
Plug 'dikiaap/minimalist'
Plug 'ayu-theme/ayu-vim'
Plug 'folke/tokyonight.nvim'
Plug 'sainnhe/everforest'
Plug 'NLKNguyen/papercolor-theme'

call plug#end()


"########## GENERAL ##########
:set number
:set smarttab
:set autoindent 
:set tabstop=4 
:set shiftwidth=4 
:set softtabstop=4
:set expandtab
:set shiftwidth=4
:set showcmd
:set cursorline
:set wildmenu
" :set lazyredraw
:set showmatch
:set incsearch
:set foldenable
:set foldlevelstart=10
:set foldmethod=indent
" :set wrap
" :set textwidth=80
:set nocompatible
:set nohlsearch
:set linebreak
:set title
:set termguicolors
" :set mouse=a
let g:neoformat_try_node_exe = 1


"##### THEME CONFIGURATION #####
:colorscheme gruvbox
:set background=dark
:set t_Co=256
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
" :autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE


"##### KEYBINDS #####
nnoremap <space> za
nnoremap <silent><C-n> :NERDTreeToggle<CR> :NERDTreeMirror<CR>
nnoremap <silent><C-h> :TransparentToggle<CR>
nnoremap <silent><C-t> :TagbarToggle<CR>
nnoremap <silent><C-p> :PlugUpdate<CR>
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
nnoremap <C-left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
