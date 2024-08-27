-- VimWiki

-- Main wiki (i don't know)
vim.cmd("let main = {}")
vim.cmd("let main.path = '~/workspace/wikis/my_docs/'")
vim.cmd("let main.auto_export = 1")
vim.cmd("let main.auto_toc = 1")
-- vim.cmd("let main.html_template = '~/public_html/template.tpl'")
-- vim.cmd("let main.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'bash': 'bash'}")

-- Linux/Artix installation
vim.cmd("let linux = {}")
vim.cmd("let linux.path = '~/workspace/wikis/linux_installation/'")
vim.cmd("let linux.auto_export = 1")
vim.cmd("let linux.auto_toc = 1")
vim.cmd("let linux.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'bash': 'bash'}")

-- Morozko instructions
vim.cmd("let morozko = {}")
vim.cmd("let morozko.path = '~/workspace/wikis/morozko/'")
vim.cmd("let morozko.html_path = '~/workspace/wikis/morozko/'")
vim.cmd("let morozko.auto_export = 1")
vim.cmd("let morozko.auto_toc = 1")

vim.cmd("let g:vimwiki_list = [main, linux, morozko]")

vim.cmd("let g:vimwiki_dir_link = 'index'")

vim.keymap.set('n', '<leader>ww1',":VimwikiIndex 1<CR>")
vim.keymap.set('n', '<leader>ww2',":VimwikiIndex 2<CR>")
vim.keymap.set('n', '<leader>ww3',":VimwikiIndex 3<CR>")
