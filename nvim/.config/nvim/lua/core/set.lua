vim.g.mapleader = " "

vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'

vim.opt.clipboard = unnamedplus

vim.opt.breakindent = true

vim.opt.tabstop     = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth  = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.termguicolors = false

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.autowrite = true

vim.opt.cursorline = true

vim.opt.scrolloff = 8

vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.opt.termguicolors = true

vim.opt.laststatus = 0
vim.opt.ruler = false

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

vim.opt.tags:append('./.tags;/')
