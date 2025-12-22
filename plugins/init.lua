-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" }, { out, "WarningMsg" }, { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
plugins_spec = {
  require("kanagawa"), -- theme
  require("lualine"), -- statusline
  require("mini"), -- minimal mini suite
  require("rooter"), -- auto-cd to project
}

-- Setup
require("lazy").setup({
  -- makes it a little nicer
  ui = { border = "rounded" },
  install = { colorscheme = { "kanagawa", "habamax" } },
  -- less overhead
  change_detection = { enabled = false, notify = false },
  -- Plugins
  spec = plugins_spec,
  -- automagically check for updates, but dont notify me
  checker = { enabled = true, notify = false },
})

require("config")
