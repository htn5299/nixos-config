{
  programs.nixvim.plugins = {
    oil = {
      enable = true;
      settings = {
        keymaps = {
          "<leader>e" = "actions.close";
        };
        keymaps_help = {
          border = "single";
        };
      };
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>n";
      action = "<cmd>Oil<CR>";
      options = {
        desc = "Oil";
      };
    }
  ];
}
