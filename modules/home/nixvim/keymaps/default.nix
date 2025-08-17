{
  # NixVim key mappings module
  programs.nixvim = {
    keymaps =
      [ ]
      ++ import ./general.nix
      ++ import ./buffer.nix
      ++ import ./git.nix
      ++ import ./hop.nix
      ++ import ./yanking.nix;
  };
}
