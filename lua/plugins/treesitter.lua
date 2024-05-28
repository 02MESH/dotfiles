-- treesitter plugin
return { 
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
  -- treesitter config
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"cpp", "lua", "javascript"},
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true},
    })
  end
}
