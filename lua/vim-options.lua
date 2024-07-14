-- Leader key
vim.g.mapleader = " "

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
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Clear search highlight
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- Window resizing
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]])   -- increase size vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]])   -- decrease size vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- decrease size horizontally
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- increase size horizontally

-- neo-tree
vim.api.nvim_set_keymap("n", "\\", ":Neotree toggle<CR>", { noremap = true, silent = true })

-- lsp
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Lint Buffer" })

-- img-clip
vim.keymap.set("n", "<leader>p", "<cmd>PasteImage<cr>", { desc = "Paste image from system clipboard" })

-- vim-tmux-navigator
vim.keymap.set("n", "C-h", ":TmuxNavigateLeft<CR>")
vim.keymap.set("n", "C-j", ":TmuxNavigateDown<CR>")
vim.keymap.set("n", "C-k", ":TmuxNavigateUp<CR>")
vim.keymap.set("n", "C-l", ":TmuxNavigateRight<CR>")

-- lazygit
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit GUI" })
