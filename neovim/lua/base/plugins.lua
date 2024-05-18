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

-- Vim-fugitive
vim.keymap.set('n','<leader>gg',':Git<CR>')
vim.keymap.set('n','<leader>gcb',':Git checkout ')

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
