{ inputs, ... }:
{
  imports = [
    inputs.nixvim.homeModules.nixvim
    ./autocommands.nix
    ./globals.nix
    ./options.nix
    ./performance.nix
    ./lsp
    ./plugins
    ./keymaps
    ./highlight.nix
  ];
}
