local lsps = {
  lua_ls = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".emmyrc.json", ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml", ".git" },
    settings = {
      Lua = {
        codeLens = { enable = true },
        hint = { enable = true, semicolon = "Disable" },
        workspace = { library = vim.api.nvim_get_runtime_file("", true) },
        format = { enable = false },
      },
    },
  },

  nixd = {
    cmd = { "nixd" },
    filetypes = { "nix" },
    root_markers = { "flake.nix", ".git" },
  },
}

-- define configs
for name, cfg in pairs(lsps) do vim.lsp.config(name, cfg) end
-- enable all configured servers
vim.lsp.enable(vim.tbl_keys(lsps))

