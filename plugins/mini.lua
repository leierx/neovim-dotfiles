return {
  "nvim-mini/mini.nvim",
  config = function()
    require("mini.cursorword").setup()

    require("mini.splitjoin").setup()

    vim.keymap.set("n", "s", "<Nop>", { desc = "use `cl` or `r`" })
    require("mini.surround").setup({
      silent = false,
      mappings = { find = '', find_left = '', highlight = '', suffix_last = '', suffix_next = ''}
    })

    require('mini.indentscope').gen_animation.none()

    require('mini.pairs').setup()

    -- only scroll & resize ty
    require('mini.animate').setup({
      cursor = { enable = false },
      open = { enable = false, },
      close = { enable = false, },
    })
  end,
}
