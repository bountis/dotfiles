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
set scrolloff=8
"set colorcolumn=80
set signcolumn=yes
set completeopt-=preview
set clipboard+=unnamedplus
highlight ColorColumn ctermbg=0 guibg=lightgrey
set nocompatible
filetype off
hi Normal ctermbg=none guibg=none


call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'akinsho/toggleterm.nvim'
Plug 'vim-airline/vim-airline'

Plug 'mfussenegger/nvim-dap'

Plug 'vim-scripts/c.vim'

"LSP
Plug 'neovim/nvim-lspconfig'

"Plug 'nvim-lua/completion-nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'

"colorschemes
Plug 'tjdevries/colorbuddy.vim'
Plug 'tjdevries/gruvbuddy.nvim'
Plug 'xero/sourcerer.vim'

Plug 'rktjmp/lush.nvim'
Plug 'adisen99/apprentice.nvim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
"Plug 'romainl/Apprentice'
Plug 'shaunsingh/nord.nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'savq/melange'
Plug 'sainnhe/edge'
Plug 'sainnhe/sonokai'
Plug 'marko-cerovac/material.nvim'
Plug 'sainnhe/everforest'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'nvim-treesitter/nvim-treesitter'
call plug#end()

if has ('termguicolors')
    set termguicolors
endif
set background=dark
"let g:material_style = "deep ocean"
"let g:edge_style = 'neon'
"let g:edge_better_performance = 1
"let g:sonokai_style = 'maia'
"let g:sonokai_better_performance = 1
"let g:tokyonight_style = "night"
colorscheme apprentice
"lua require('colorbuddy').colorscheme('gruvbuddy')

set completeopt=menuone,noselect
lua require("lsp-config")
lua require("treesitter")
lua require("_toggleterm")


" Line number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

inoremap jj <ESC>
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


"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"buffer switch maps
map <leader>bb :buffers<cr>
nnoremap [b : bp<cr>
nnoremap ]b : bn<cr>
"nnoremap <silent><expr><leader>b printf(":\<C-U>%s\n", v:count ? 'buffer' . v:count : 'bnext')

" Snippet maps
" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
