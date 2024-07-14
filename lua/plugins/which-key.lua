-- NOTE: GUI for display keybinds
return {
	"folke/which-key.nvim",
	dependencies = {
		"echasnovski/mini.icons",
	},
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		icons = {
			breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
			separator = "➜", -- symbol used between a key and it's label
			group = "", -- symbol prepended to a group
		},
	},
	config = function()
		require("which-key").add({
				{ "<leader>T", group = "󰙨 Tests" },
				{ "<leader>d", group = "Debugging" },
				{ "<leader>f", group = " Find" },
				{ "<leader>g", group = "Git" },
				{ "<leader>h", group = " Harpoon" },
				{ "<leader>l", group = " LSP" },
				{ "<leader>n", group = " Neovim" },
				{ "<leader>o", group = " Options" },
				{ "<leader>p", group = " Plugins" },
				{ "<leader>r", group = " Runner" },
				{ "<leader>t", group = "Terminal" },
		})
	end,
}
