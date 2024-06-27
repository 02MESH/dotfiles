return {
  "lervag/vimtex",
  dependencies = {
    "xuhdev/vim-latex-live-preview",
  },
  ft = {"tex"},
  config = function()
    vim.g.tex_flavor = "latex"
    vim.g.vimtex_view_method = "skim"
    vim.g.vimtex_view_skim_sync = 1
    vim.g.vimtex_view_skim_activate = 1
  end,
}
