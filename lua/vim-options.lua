-- Leader key
vim.g.mapleader = ' '

-- Tab and indent settings
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Sign column settings
vim.opt.signcolumn = "yes" -- Show sign column but don't replace line numbers

-- Better pane navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Clear search highlight
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Window resizing
vim.keymap.set('n', '=', [[<cmd>vertical resize +5<cr>]]) -- increase size vertically
vim.keymap.set('n', '-', [[<cmd>vertical resize -5<cr>]]) -- decrease size vertically
vim.keymap.set('n', '+', [[<cmd>horizontal resize +2<cr>]]) -- decrease size horizontally
vim.keymap.set('n', '_', [[<cmd>horizontal resize -2<cr>]]) -- increase size horizontally
