-- NOTE: Package Installer
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
          "bashls",
          "cssls",
          "eslint",
          "html",
          "jsonls",
					"lua_ls",
					"clangd",
					"tsserver",
					"vimls",
				},
			})
		end,
	},
}
