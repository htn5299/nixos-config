{
  programs.nixvim.plugins = {
    neo-tree = {
      enable = true;
      # usePopupsForInput = false;
      closeIfLastWindow = true;
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
      action = "<cmd>Neotree float reveal toggle<CR>";
      options = {
        desc = "Neotree";
      };
    }
  ];
}
