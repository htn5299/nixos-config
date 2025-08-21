{
  programs.nixvim.plugins = {
    neo-tree = {
      enable = true;
      # usePopupsForInput = false;
      popupBorderStyle = "single";
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree reveal float<CR>";
      options = {
        desc = "Neotree";
      };
    }
  ];
}
