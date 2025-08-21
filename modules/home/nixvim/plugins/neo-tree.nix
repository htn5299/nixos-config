{
  programs.nixvim.plugins = {
    neo-tree = {
      enable = true;
      # usePopupsForInput = false;
      popupBorderStyle = "single";
      eventHandlers = {
        neo_tree_window_after_open = ''
          function(args)
            if args.position == "left" or args.position == "right" then
              vim.cmd("wincmd =")
            end
          end,
        '';
      };
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree reveal left<CR>";
      options = {
        desc = "Neotree";
      };
    }
  ];
}
