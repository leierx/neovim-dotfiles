{
  outputs = {
    homeManagerModules.default =
      { pkgs, ... }:
      {
        xdg.configFile."nvim".source = ./nvim;

        home.packages = with pkgs; [
          ripgrep # search (rg)
          fd # file finder

          lua-language-server # lua_ls
          nixd # nixd
          nixfmt # nix formatter
          ansible-lint # ansible linter
          marksman # markdown LSP
          typescript-language-server # tsserver client wrapper
          vscode-langservers-extracted # html/css/json language servers
          yaml-language-server # yamlls
          tofu-ls # tofu_ls (LSP)
        ];
      };
  };
}
