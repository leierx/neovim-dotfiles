{
  outputs = {
    homeManagerModules.default =
      { pkgs, ... }:
      {
        xdg.configFile."nvim".source = ./nvim;

        home.packages = with pkgs; [
          ripgrep
          fd
          lua-language-server
          nixd
          nixfmt-rfc-style
        ];
      };
  };
}
