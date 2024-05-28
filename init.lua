--Main lua file

--main lua file
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

-- used for finding files and live greping local variables.
vim.g.mapleader = ' '

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin configuration of all the plugins
local plugins = {

  -- catppuccin theme
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- telescope plugin
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- treesitter plugin
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }
}

local opts = {}

require("lazy").setup(plugins, opts)

-- setting up the telescope plugin for fuzzy-finding files
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Setting up the catppuccin theme
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

-- treesitter config
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"cpp", "lua", "javascript"},
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true},
})
