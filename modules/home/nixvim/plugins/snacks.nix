{
  programs.nixvim = {
    plugins = {
      todo-comments.enable = true;
      snacks = {
        enable = true;
        settings = {
          styles = {
            float = {
              backdrop = 100;
            };
            blame_line = {
              border = "single";
            };
            input = {
              border = "single";
            };
            notification = {
              border = "single";
            };
            notification_history = {
              border = "single";
            };
            scratch = {
              border = "single";
            };
            snacks_image = {
              border = "single";
            };
          };

          image = {
            enabled = true;
            doc = {
              inline = false;
              float = false;
            };
          };

          statuscolumn = {
            enabled = true;
          };

          indent = {
            enabled = true;
          };

          rename = {
            enabled = true;
          };

          notifier = {
            enabled = true;
          };

          input = {
            enabled = true;
          };
        };
      };
    };
  };
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>fn";
      action = "<cmd>lua Snacks.notifier.show_history()<cr>";
      options.desc = "Notification History";
    }
  ];
}
