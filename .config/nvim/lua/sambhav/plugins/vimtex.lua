return {
  "lervag/vimtex",
  lazy = false,
  init = function ()
    vim.g.tex_flavor = "latex"
    vim.g.vimtex_view_method = "skim"
    vim.g.vimtex_view_skim_sync = 1
    vim.g.vimtex_view_skim_activate = 1
    vim.g.vimtex_quickfix_mode=0
  end
}
