return{
  "brennier/quicktex",
  lazy = false,
  init = function ()
    vim.g.quicktex_tex = {
      ['m'] = [[\( <+++> \) <++> ]],
      ['c'] = [[\\begin{center}\<CR><+++>\<CR>\\end{center}]],
      ['beg'] = [[\begin{<+++>}\<CR><++>\<CR>\end{}]],
    }
    vim.api.nvim_set_keymap(
      'i', -- in insert mode
      [[<C-tab>]], -- key binding for the backslash and single quote
      [[<ESC>:call search('<+.*+>')<CR>"_c/+>/e<CR>]], -- the mapping action
      { noremap = true, silent = true } -- options
    )
  end
}
