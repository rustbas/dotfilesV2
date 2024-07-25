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
vim.call('plug#end')

---------------------
-- PLUGIN SETTINGS --
---------------------

-- NERDTree
vim.g.NERDTreeFileLines = 1 -- Line number
vim.g.NERDTreeFilesIgnore = {'^__pycache__'} -- Ignore dirs

-- colorscheme
vim.cmd('colorscheme molokai')

-- color highlighting
-- Ensure termguicolors is enabled if not already
vim.opt.termguicolors = true

require('nvim-highlight-colors').setup({})
-- set transparency (MUST BE AFTER SETTING COLORSHCHEME!)
-- vim.cmd('highlight Normal ctermbg=NONE')
vim.cmd('hi! Normal ctermbg=NONE guibg=NONE')
--------------------
-- PLUGIN HOTKEYS --
--------------------

-- NERDTree
vim.keymap.set('n','<leader>n',':NERDTreeToggle<CR>')

-- Vim-fugitive
vim.keymap.set('n','<leader>gg',':Git<CR>')
vim.keymap.set('n','<leader>gP',':Git push<CR>')
vim.keymap.set('n','<leader>gp',':Git pull --no-rebase<CR>')
-- vim.keymap.set('n','<leader>gcb',':Git checkout ')

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.api.nvim_create_autocmd("FileType", {
    pattern = {"TelescopeResults"},
    callback = function()
        vim.opt.nofoldenable = true
    end
})
