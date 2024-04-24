-- ruler
vim.wo.number = true
vim.wo.relativenumber = true

-- encoding
--vim.cmd('set encoding=utf-8')

-- mapleader
vim.g.mapleader = ' ' 

-- Line&column highlighting
vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true

-- syntax 
vim.cmd('syntax on')

-- Searching
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- tabs and indents
vim.opt.expandtab=true
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4

vim.opt.smarttab = true
vim.opt.autoindent = true

-- fast scroll (???)
vim.opt.ttyfast = true

-- cursor always on center
vim.wo.so=30

-- mouse 
vim.opt.mouse=a

-- system copybuffer
vim.opt.clipboard=unnamedplus

-- Autocomplete in shell
vim.opt.wildmode=longest,list

-- Fold by indents
vim.cmd('set foldmethod=indent')
