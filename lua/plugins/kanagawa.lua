return {
  "rebelot/kanagawa.nvim",
  opts = {
    overrides = function(colors)
      return { LineNr = { fg = colors.theme.ui.fg_dim } } -- slightly brighter linenumbers
    end,
  },
  config = function(_, opts)
    require("kanagawa").setup(opts)
    vim.cmd("colorscheme kanagawa")
  end,
}
