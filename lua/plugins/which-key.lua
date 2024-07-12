-- NOTE: GUI for display keybinds
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		require("which-key").register({
			{
				["<leader>"] = {
					d = { name = "󰃤 Debugger" },
					-- r = { name = " Runner" },
					-- s = { name = "󰔚 Sessions" },
					f = { name = " Find" },
					-- g = { name = "󰊢 Git" },
					-- h = { name = " Harpoon" },
					l = { name = " LSP" },
					-- n = { name = " Neovim" },
					o = { name = " Options" },
					p = { name = " Plugins" },
					t = { name = " Terminal" },
					-- T = { name = "󰙨 Tests" },
					-- v = { name = " Venv" },
				},
			},
		})
	end,
}
