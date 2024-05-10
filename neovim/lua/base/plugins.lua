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
vim.call('plug#end')

---------------------
-- PLUGIN SETTINGS --
---------------------

-- NERDTree
vim.g.NERDTreeFileLines = 1 -- Line number
vim.g.NERDTreeFilesIgnore = {'^__pycache__'} -- Ignore dirs

-- colorscheme
vim.cmd('colorscheme molokai')

-- set transparency (MUST BE AFTER SETTING COLORSHCHEME!)
vim.cmd('highlight Normal ctermbg=NONE')
--------------------
-- PLUGIN HOTKEYS --
--------------------

-- NERDTree
vim.keymap.set('n','<leader>n',':NERDTreeToggle<CR>')
