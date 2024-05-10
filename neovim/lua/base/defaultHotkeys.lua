-- no highlighting
vim.keymap.set('n','<leader>h',':nohlsearch<CR>')

-- make 
vim.keymap.set('n','<leader>m',':make<CR>')

-- Splits
vim.keymap.set('n','<leader>sh',':split h<CR>')
vim.keymap.set('n','<leader>sv',':split v<CR>')

-- QuickFix list (Maybe must add some hotkeys)
vim.keymap.set('n','<leader>qo',':copen<CR>')
vim.keymap.set('n','<leader>qp',':cprev<CR>')
vim.keymap.set('n','<leader>qn',':cnext<CR>')
