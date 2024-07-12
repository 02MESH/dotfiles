-- NOTE: DAP Protocol
return {
  "jay-babu/mason-nvim-dap.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "mfussenegger/nvim-dap",
  },
  config = function()
    local dap = require("dap")

    --keymaps
    vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {
      desc = "DAP | Breakpoint",
      silent = true,
    })
    vim.keymap.set("n", "<Leader>dc", dap.continue, {
      desc = "DAP | Continue",
      silent = true,
    })
    vim.keymap.set("n", "<Leader>si", dap.step_into, {
      desc = "DAP | Step Into",
      silent = true,
    })

    require("mason-nvim-dap").setup({
      automatic_setup = true,
      ensure_installed = { "python", "codelldb", "cpptools" },
    })

    require("plugins.dap.settings.codelldb")
  end,
}
