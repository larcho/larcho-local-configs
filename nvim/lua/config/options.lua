vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

local opt = vim.opt

-- Search
opt.ignorecase = true
opt.smartcase = true

-- UI
opt.cursorline = true
opt.number = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.showmode = false -- lualine shows mode

-- Indentation defaults
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2

-- Misc
opt.undofile = true
opt.splitright = true
opt.splitbelow = true
opt.clipboard = "unnamedplus"
