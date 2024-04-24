local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
Plug 'christoomey/vim-tmux-navigator'
-- Plug 'vim-airline/vim-airline'
-- Plug 'vim-airline/vim-airline-themes'
vim.call('plug#end')

---------------------
-- PLUGIN SETTINGS --
---------------------



-- colorscheme
vim.cmd('colorscheme molokai')

-- set transparency (MUST BE AFTER SETTING COLORSHCHEME!)
vim.cmd('highlight Normal ctermbg=NONE')
--------------------
-- PLUGIN HOTKEYS --
--------------------

-- NerdTree
vim.keymap.set('n','<leader>n',':NERDTreeToggle<CR>')
-- let g:NERDTreeFileLines = 1 " Line number
-- let g:NERDTreeFilesIgnore = ['^__pycache__'] " Ignore dirs
