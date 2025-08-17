{
  programs.nixvim = {
    plugins = {
      fzf-lua = {
        enable = true;
        settings = {
          fzf_colors.__raw = ''{ true, gutter = "-1" }'';
          keymap = {
            builtin = {
              "<c-u>" = "preview-page-up";
              "<c-d>" = "preview-page-down";
            };
            fzf = {
              "ctrl-q" = "select-all+accept";
            };
          };
          fzf_opts = {
            "--cycle" = "";
          };
          winopts = {
            backdrop = 100;
            border = "single";
            preview = {
              border = "single";
            };
          };
        };
      };
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>ff";
        action = "<cmd>FzfLua files<CR>";
        options = {
          desc = "Find files";
        };
      }
      {
        mode = "n";
        key = "<leader>fb";
        action = "<cmd>FzfLua buffers<CR>";
        options = {
          desc = "Find Buffers";
        };
      }
      {
        mode = "n";
        key = "<leader>fs";
        action = "<cmd>FzfLua live_grep_native<CR>";
        options = {
          desc = "Find live grep";
        };
      }
      {
        mode = "n";
        key = "<leader>la";
        action = "<cmd>FzfLua lsp_code_actions<CR>";
        options = {
          desc = "Code actions";
          silent = true;
        };
      }
    ];
  };
}
