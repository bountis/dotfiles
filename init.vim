
" curl -flo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
" 	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


syntax enable
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set nohlsearch
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
"set colorcolumn=80
set signcolumn=yes
set completeopt-=preview
set clipboard+=unnamedplus
highlight ColorColumn ctermbg=0 guibg=lightgrey
set nocompatible
filetype off


call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'akinsho/toggleterm.nvim'


"LSP
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'


"Plug 'nvim-lua/completion-nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'


"colorschemes
Plug 'xero/sourcerer.vim'
Plug 'joshdick/onedark.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }
Plug 'connorholyday/vim-snazzy'
Plug 'Rigellute/rigel'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

Plug 'jiangmiao/auto-pairs'
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'p00f/nvim-ts-rainbow'
call plug#end()


"Theme
set background=dark
colorscheme apprentice
hi Normal guibg=None ctermbg=None

set completeopt=menuone,noselect
lua require("lsp-config")
lua require("treesitter")


" Line number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE


map <silent> <C-n> :NERDTreeFocus<CR>
let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap J :m '>+1<CR>gv=gv
nnoremap K :m '<-2<CR>gv=gv


" Snippet maps
" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
