local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
-- Plug 'vim-airline/vim-airline'
-- Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'--, { 'tag': '0.1.6' }
Plug 'brenoprata10/nvim-highlight-colors'
Plug 'vimwiki/vimwiki'
vim.call('plug#end')

---------------------
-- PLUGIN SETTINGS --
---------------------


-- colorscheme
vim.cmd('colorscheme molokai')

-- color highlighting
-- Ensure termguicolors is enabled if not already
vim.opt.termguicolors = true

require('nvim-highlight-colors').setup({})
-- set transparency (MUST BE AFTER SETTING COLORSHCHEME!)
-- vim.cmd('highlight Normal ctermbg=NONE')
vim.cmd('hi! Normal ctermbg=NONE guibg=NONE')

