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

-- Status line
-- vim.opt.statusline=""
local function git_branch()
    local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
    if string.len(branch) > 0 then
        return branch
    else
        return "none"
    end
end

local function statusline()
    local set_color_1 = "%#PmenuSel#"
    local branch = '%{FugitiveStatusline()}' -- better cause of fast reloading
    -- local branch = git_branch() 
    local set_color_2 = "%#LineNr#"
    local position = "%f:%l:%c"
    local modified = "%m"
    local align_right = "%="
    local fileencoding = "%{&fileencoding?&fileencoding:&encoding}"
    local fileformat = "[%{&fileformat}]"
    local filetype = "%y"
    local percentage = "%p%%"
    local directory = "%{getcwd()}"

    return string.format(
        " %s | %s | Branch: %s %s %s %s | %s ", -- | Fileformat: %s ",
        --set_color_1,
        -- set_color_2,
        directory,
        position,
        branch, -- fugitive - strange
        modified,
        align_right,
        filetype,
        fileencoding
        -- fileformat
        -- percentage -- I don't think that is needed
    )
end

vim.opt.statusline = statusline()

-- Undo tree
-- save undo-trees in files
vim.opt.undofile = true
vim.opt.undodir="/home/rustam/.config/nvim/undo"
-- number of undo saved
vim.opt.undolevels=10000
vim.opt.undoreload=10000
