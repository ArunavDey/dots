" Author: Arunav Dey

" vim-plug
call plug#begin()

" general plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-commentary'
Plug 'preservim/tagbar'

" colourschemes
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


" general settings
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
:set showmatch
:set incsearch
:set foldenable
:set foldlevelstart=10
:set foldmethod=indent
:set nocompatible
:set nohlsearch
:set linebreak
:set title
:set termguicolors
" :set mouse=a


" theme config
:colorscheme gruvbox
:set background=dark
:set t_Co=256
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
let g:rainbow_active = 1
:autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE


" keybinds
nnoremap <space> za
nnoremap <silent><C-n> :NERDTreeToggle<CR>
nnoremap <silent><C-t> :TagbarToggle<CR>
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
nnoremap <C-left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
