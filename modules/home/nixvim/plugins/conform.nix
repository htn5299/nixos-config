{
  programs.nixvim.plugins.conform-nvim = {
    enable = true;

    settings = {
      format_on_save = # Lua
        ''
          function(bufnr)
            -- Disable with a global or buffer-local variable
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end
            return { timeout_ms = 500, lsp_format = "fallback" }
          end
        '';
      # format_on_save = {
      #   lsp_fallback = "fallback";
      #   timeout_ms = 500;
      # };
      notify_on_error = true;
      formatters_by_ft = {
        html = [
          "prettierd"
          "prettier"
        ];
        css = [
          "prettierd"
          "prettier"
        ];
        javascript = [
          "prettierd"
          "prettier"
        ];
        javascriptreact = [
          "prettierd"
          "prettier"
        ];
        typescript = [
          "prettierd"
          "prettier"
        ];
        typescriptreact = [
          "prettierd"
          "prettier"
        ];
        python = [ "black" ];
        lua = [ "stylua" ];
        nix = [ "nixfmt" ];
        markdown = [
          "prettierd"
          "prettier"
        ];
        bash = [ "shfmt" ];
        sh = [ "shfmt" ];
        svelte = [ "prettier" ];
        json = [ "prettier" ];
        graphql = [ "prettier" ];
        liquid = [ "prettier" ];
      };
    };
  };

  programs.nixvim.userCommands = {
    "FormatDisable" = {
      command.__raw = ''
        function(args)
          if args.bang then
            -- FormatDisable! will disable formatting just for this buffer
            vim.b.disable_autoformat = true
          else
            vim.g.disable_autoformat = true
          end
        end'';
      desc = "Disable autoformat-on-save";
      bang = true;
    };

    "FormatEnable" = {
      command.__raw = ''
        function()
          vim.b.disable_autoformat = false
          vim.g.disable_autoformat = false
        end
      '';
      desc = "Re-enable autoformat-on-save";
    };
  };
}
