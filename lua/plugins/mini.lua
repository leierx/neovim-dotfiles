return {
  "nvim-mini/mini.nvim",
  version = "*", -- stable branch
  lazy = false,
  config = function()
    require("mini.cursorword").setup()
    require("mini.pairs").setup()

    require("mini.animate").setup({ cursor = { enable = false } })
    require("mini.splitjoin").setup({ mappings = { toggle = "", split = "", join = "" } })

    vim.keymap.set("n", "s", "<Nop>", { desc = "use `cl` or `r`" })
    require("mini.surround").setup({
      silent = false,
      mappings = { find = "", find_left = "", highlight = "", suffix_last = "", suffix_next = "" },
    })

    vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { link = "NonText" })
    vim.api.nvim_set_hl(0, "MiniIndentscopeSymbolOff", { link = "NonText" })
    require("mini.indentscope").setup({
      draw = { animation = require("mini.indentscope").gen_animation.none() },
      mappings = { object_scope = "", object_scope_with_border = "", goto_top = "", goto_bottom = "" },
      symbol = "│",
      options = { try_as_border = true },
    })

    require("mini.diff").setup({
      view = { style = "number" },
      mappings = { apply = "", reset = "", textobject = "", goto_first = "", goto_last = "", goto_next = "", goto_prev = "" },
    })
  end,
  keys = {
    { "gh", function() MiniDiff.toggle_overlay() end, desc = "MiniDiff: toggle overlay" },
  },
}
