{ pkgs, ... }:
{
  programs.nixvim.plugins = {
    treesitter-textobjects.enable = true;
    treesitter-context.enable = false;
    treesitter = {
      enable = true;

      settings = {
        indent = {
          enable = true;
        };
        highlight = {
          enable = true;
        };
      };

      nixvimInjections = true;
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
    };

  };
}
