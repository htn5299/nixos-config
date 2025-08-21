{
  programs.nixvim.plugins = {
    nvim-tree = {
      enable = true;
      settings = {
        renderer = {
          icons.git_placement = "signcolumn";
          root_folder_label = false;
          # indentMarkers.enable = true;
        };
        view = {
          float = {
            enable = true;
          };
        };
        hijack_cursor = true;
        # modified.enable = true;
        filters.custom = [
          "^\.git"
        ];
      };
      # Type: null or one of “after”, “before”, “signcolumn” or raw lua code
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>NvimTreeFindFile<CR>";
      options = {
        desc = "Nvimtree";
      };
    }
  ];
}
