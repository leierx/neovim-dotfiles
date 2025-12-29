{
  outputs =
    { ... }:
    {
      homeManagerModules.default =
        { pkgs, ... }:
        {
          xdg.configFile."nvim".source = ./.;

          home.packages = with pkgs; [
            ripgrep
            fd
            lua-language-server
            nixd
            nixfmt
            ansible-lint
            marksman
            typescript-language-server
            vscode-langservers-extracted
            yaml-language-server
            tofu-ls
          ];
        };
    };
}
