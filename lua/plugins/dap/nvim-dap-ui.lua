-- NOTE: Debugging UI
return {
  "rcarriga/nvim-dap-ui",

  dependencies = {
    "nvim-neotest/nvim-nio",
    { "theHamsta/nvim-dap-virtual-text", opts = {} },
    "mfussenegger/nvim-dap",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DiagnosticSignError", linehl = "", numhl = "" })

    require("dapui").setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    -- dap.listeners.before.event_terminated.dapui_config = function()
    --   dapui.close()
    -- end
    -- dap.listeners.before.event_exited.dapui_config = function()
    --   dapui.close()
    -- end

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
  end,
}
