local set           = vim.opt
local cmd           = vim.cmd
local g             = vim.g
local o             = vim.o

-- global
g.mapleader         = ','
set.encoding        = "utf-8"
set.fileencoding    = "utf-8"
set.fileencodings   = "utf-8"
set.hidden          = true
set.clipboard       = "unnamed,unnamedplus"

-- tabs
set.tabstop         = 4
set.softtabstop     = 0
set.shiftwidth      = 4
set.expandtab       = true

-- searching
set.ignorecase      = true
set.smartcase       = true

-- visual
set.number          = true
set.title           = true
o.termguicolors     = true
o.completeopt       = "menuone,noselect"
set.titlestring     = "%F"
g.syntax            = "on"
cmd([[colorscheme nord]])
