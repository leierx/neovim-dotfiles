return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      nix = { "nixfmt" },
    },
    format_on_save = {}, -- enables autocmd
  },
  config = function(_, opts)
    require("conform").setup(opts)
    require("conform").formatters.nixfmt = { append_args = { "--width", "6900" } }
  end,
}
