-- no highlighting
vim.keymap.set('n','<leader>h',':nohlsearch<CR>')

-- make 
vim.keymap.set('n','<leader>mm',':make<CR>')
vim.keymap.set('n','<leader>mc',':make clean<CR>')

-- Splits
vim.keymap.set('n','<leader>sh',':split h<CR>')
vim.keymap.set('n','<leader>sv',':split v<CR>')

-- QuickFix list (Maybe must add some hotkeys)
vim.keymap.set('n','<leader>qo',':copen<CR>')
vim.keymap.set('n','<leader>qp',':cprev<CR>')
vim.keymap.set('n','<leader>qn',':cnext<CR>')

-- Insert date
vim.keymap.set('n','<leader>id',':read !date +\\%Y-\\%m-\\%d<CR>')
vim.keymap.set('n','<leader>ih',':read !date +\\%H:\\%M:\\%S<CR>')
