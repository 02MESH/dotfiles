-- NOTE: LSP Configuration
return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local lspconfig = require("lspconfig")

		-- Lua
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})

		-- C/C++
		lspconfig.clangd.setup({
			capabilities = capabilities,
		})

		-- Vimscript
		lspconfig.vimls.setup({
			capabilities = capabilities,
		})

		-- Typescript
		lspconfig.tsserver.setup({
			capabilities = capabilities,
		})

		-- ESLINT
		lspconfig.eslint.setup({
			capabilities = capabilities,
		})

		-- HTML
		lspconfig.html.setup({
			capabilities = capabilities,
		})

		-- CSS
		lspconfig.cssls.setup({
			capabilities = capabilities,
		})

		-- JSON
		lspconfig.jsonls.setup({
			capabilities = capabilities,
		})

		-- Keymaps for LSP functions
		vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { desc = "Hover" })
		vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = "Definition" })
		vim.keymap.set({ "n", "v" }, "<leader>lc", vim.lsp.buf.code_action, { desc = "Code Actions" })
	end,
}
