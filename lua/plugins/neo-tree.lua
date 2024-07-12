-- Note: File Explorer
return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			window = {
				position = "left",
				width = 30,
			},
		})
    vim.api.nvim_set_keymap('n', '\\', ":Neotree toggle<CR>", { noremap = true, silent = true })
	end,
}
