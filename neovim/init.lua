require('base.defaultSettings')
require('base.defaultHotkeys')
require('base.plugins')

-- PLUGINS
require('base.plugins_d.NERDTree')
require('base.plugins_d.telescope')
require('base.plugins_d.vim-fugitive')
-- require('base.plugins_d.vimwiki')
require('base.plugins_d.nvim-comment')

-- LSP
require('lspconfig.lspconfig')
