-- vim.cmd doesn't seem to work  in the neovim version 7 that I currently have on Ubuntu
-- vim.keymap.set('n', '-', vim.cmd.Ex)
vim.keymap.set('n', '-', '<cmd>Explore<CR>')

vim.keymap.set('n', 'J', 'mjJ`j')
