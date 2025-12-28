return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>f", function() require("fzf-lua").files() end, desc = "Find files cwd" },
    { "<leader>F", function() require("fzf-lua").files({ cwd = vim.loop.os_homedir() }) end, desc = "Find files ~" },
    { "<leader>g", function() require("fzf-lua").live_grep_native() end, desc = "Live grep (performance mode)" },
    { "<leader>b", function() require("fzf-lua").buffers() end, desc = "Live grep (performance mode)" },
    { "<leader>o", function() require("fzf-lua").old_files() end, desc = "Find old files" },
  },
  opts = {
    
  }
}
